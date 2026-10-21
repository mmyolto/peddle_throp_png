# Builds preview.html: embeds every photo in images/ as a data URI, because the claude.ai
# preview cannot load local files or images from other sites.
import base64, json, mimetypes, os
src = open('src/body.html').read()
imgs = {}
if os.path.isdir('images'):
    for f in sorted(os.listdir('images')):
        if f.lower().endswith(('.jpg', '.jpeg', '.png', '.webp')):
            path = 'images/' + f
            mt = mimetypes.guess_type(path)[0] or 'image/jpeg'
            imgs[path] = 'data:%s;base64,%s' % (mt, base64.b64encode(open(path, 'rb').read()).decode())
# Literal references in HTML and CSS
for path, uri in imgs.items():
    src = src.replace('src="%s"' % path, 'src="%s"' % uri).replace('url("%s")' % path, 'url("%s")' % uri)
# Paths the script builds at run time
tag = '<script>window.INLINE_IMAGES = %s;</script>\n' % json.dumps(imgs)
i = src.index('<script>')
open('preview.html', 'w').write('<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n' + src[:i] + tag + src[i:])
print('inlined', len(imgs), 'images')
