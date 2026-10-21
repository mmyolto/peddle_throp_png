# Peddle Thorp Architects PNG website: content still needed

Facebook and LinkedIn block automated reading, so the local content came from public listings
(peddlethorp.com.pg, Houzz, The National 2014, Meinhardt, peddlethorp.com.au/profile).
Everything marked with a gold dashed "TO SUPPLY" / "TBC" tag on the site needs input.

## Must have before launch
1. **Photos**: one per project, studio photos and team portraits. See images/README.txt for the file names. Waigani photos and the Peddle Thorp logo load from peddlethorp.com.au on the live site; confirm the Australian office is happy to share them.
2. **Logo**: done. The supplied mark is at images/logo-mark.png (blue) and images/logo-mark-white.png. The supplied file is small (200 px); a larger or vector (SVG/PDF) version would print sharper on big screens.
3. **Contact**: street address, a general email (the only public email found was admin@gparchitect.com.au, which belongs to Glen Petersen Architect), office hours. Confirm +675 321 4688 is the main number.
4. **Team**: names and roles for the Studio section (four slots now: MD, Principal, Project Architect, Graduate).
5. **Projects**: year, size, location and a line of description for BSP Operations & Data Centre, BSP/Westpac branches, Kumul Holdings, ADB/World Bank/Puma fit-outs, Airways Function Centre, Davara Badina. Add any other projects you want shown.

## Please confirm
- Cultural references (haus tambaran, bilum, lakatoi and Hiri trade, Oro tapa band) are used as general motifs; confirm the studio is comfortable with them, or name motifs from your own region.
- Year the PNG office was founded, for the History timeline.
- Waigani National Courts credit wording (public sources credit Peddle Thorp with James Cubitt Architects and PTW).
- Joint venture with Glen Petersen Architect is still current.
- Pull quote (draft line written by Claude).
- "Registered architects on staff" figure.
- News shows PNG items only (Waigani courts, 2014 to 2025). Add recent Facebook/LinkedIn posts.
- Completion years for every project except Waigani, for the Portfolio timeline.

## Technical
- Version 3 follows peddlethorp.com.au (menu, galleries, project pages) and ptw.com.au (headline over the hero, Featured, Practice tiles). Pages: Home, Profile, Policies, Sustainability, Portfolio, a page per project, Studio, Meet our team, News, Contact, all in one file. Projects are listed once in the PROJECTS list near the end of src/body.html; add or edit projects there.
- Policies documents (quality, safety, environment) for the Profile page.
- Enquiry form needs an inbox (e.g. Formspree or the host's form handler) before it can send.
- Facebook feed is embedded in the live build (index.html); the claude.ai preview shows follow cards instead because embeds are blocked there.
- Domain: peddlethorp.com.pg already exists. Decide whether this replaces it.

## Files
- `index.html`: the live site, ready to upload to any web host.
- `preview.html`: the version published to claude.ai.
- `src/body.html`: source; run `sh build.sh` after editing to regenerate both.
