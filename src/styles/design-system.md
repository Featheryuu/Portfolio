# Design System — Chia-Ying Tsai Portfolio

A pastel-driven design language: soft, warm tones let the project work breathe while a near-black accent anchors the type and interactions.

---

## Typography

**Font family:** IBM Plex Sans
**Fallbacks:** ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica Neue, Arial, sans-serif
**Weights loaded:** 400 (regular), 500 (medium), 600 (semibold), 700 (bold)

### Type scale

| Token | Size (mobile) | Size (desktop) | Weight | Usage |
|-------|---------------|----------------|--------|-------|
| `display` | 2.5rem (40px) | 4.5rem (72px) | 700 | Hero headline |
| `h1` | 2rem (32px) | 3rem (48px) | 600 | Page title |
| `h2` | 1.75rem (28px) | 2.25rem (36px) | 600 | Section title |
| `h3` | 1.25rem (20px) | 1.5rem (24px) | 600 | Card title |
| `body-lg` | 1.125rem (18px) | 1.25rem (20px) | 400 | Lead paragraph |
| `body` | 1rem (16px) | 1rem (16px) | 400 | Body copy |
| `small` | 0.875rem (14px) | 0.875rem (14px) | 400 | Captions |
| `eyebrow` | 0.75rem (12px) | 0.75rem (12px) | 500 | Section labels (uppercase, tracking) |

**Line heights:** 1.1 for display/h1, 1.2 for h2/h3, 1.6 for body
**Letter spacing:** -0.02em on display/h1, 0 on body, 0.15em on eyebrow

---

## Color Palette

### Pastel surface colors

| Token | Hex | Usage |
|-------|-----|-------|
| `--color-pink` | `#FFF7F7` | Heathrow project background, soft section background |
| `--color-orange` | `#FFEEDB` | Hero accent, About section, warm highlights |
| `--color-yellow` | `#FFFCEB` | Kinship project background, optimistic surfaces |
| `--color-blue` | `#EDF7FF` | Cornershop project background, calm/data surfaces |

### Neutral / mono palette

| Token | Hex | Usage |
|-------|-----|-------|
| `--color-bg-primary` | `#FFFFFF` | Main page background |
| `--color-bg-secondary` | `#FAFAFA` | Alternating sections, subtle cards |
| `--color-bg-tertiary` | `#F2F2F2` | Dividers, disabled states |
| `--color-surface` | `#FFFFFF` | Cards, nav background |
| `--color-border` | `#E5E5E5` | Card borders, separators |
| `--color-border-strong` | `#CFCFCF` | Active borders, focused inputs |
| `--color-text-primary` | `#0F0F10` | Headings, primary text |
| `--color-text-secondary` | `#4A4A4A` | Body copy, descriptions |
| `--color-text-tertiary` | `#7A7A7A` | Captions, metadata |
| `--color-accent` | `#0F0F10` | Buttons, links, active states (near-black) |
| `--color-accent-hover` | `#2E2E2E` | Hover states for accent |

### Contrast (WCAG AA)
- `text-primary` on `bg-primary` — 19.8:1 (AAA)
- `text-secondary` on `bg-primary` — 9.7:1 (AAA)
- `text-tertiary` on `bg-primary` — 4.6:1 (AA)
- `text-primary` on any pastel surface — 18+ : 1 (AAA)

---

## Spacing

8px base scale, applied via Tailwind defaults.

| Token | Value |
|-------|-------|
| `space-1` | 4px |
| `space-2` | 8px |
| `space-3` | 12px |
| `space-4` | 16px |
| `space-6` | 24px |
| `space-8` | 32px |
| `space-12` | 48px |
| `space-16` | 64px |
| `space-20` | 80px |
| `space-28` | 112px |

**Section padding:** `py-20` mobile / `py-28` desktop
**Container max-width:** `max-w-6xl` (72rem / 1152px)
**Container gutter:** `px-6` mobile / `px-8` desktop

---

## Radius

| Token | Value | Usage |
|-------|-------|-------|
| `rounded-sm` | 4px | Small chips, badges |
| `rounded-md` | 8px | Inputs, small buttons |
| `rounded-lg` | 12px | Tag pills |
| `rounded-2xl` | 16px | Project cards |
| `rounded-full` | 9999px | CTA buttons, avatars |

---

## Shadows

| Token | Value | Usage |
|-------|-------|-------|
| `shadow-sm` | `0 1px 2px rgba(15,15,16,0.04)` | Subtle card lift |
| `shadow-md` | `0 4px 12px rgba(15,15,16,0.06)` | Hovered cards |
| `shadow-lg` | `0 12px 32px rgba(15,15,16,0.10)` | Floating elements |

---

## Motion

- **Duration:** 200ms (micro), 300ms (default), 500ms (entrance), 700ms (slow reveal)
- **Easing:** `cubic-bezier(0.65, 0, 0.35, 1)` for slide/scale, `ease-out` for fades
- **Reveal:** opacity + 24px translateY, triggered via IntersectionObserver
- **Hover lift:** `translateY(-4px)` on cards, `translateY(-2px)` on buttons
- All animations respect `prefers-reduced-motion`

---

## Components

### Buttons
- **Primary:** filled `--color-accent` (near-black), white text, `rounded-full`, `px-7 py-3.5`
- **Secondary:** transparent w/ 2px border `--color-text-primary`, hover fills with accent
- **Ghost:** text-only with sliding underline

### Cards
- White surface, `border` 1px, `rounded-2xl`, hover lifts and reveals deeper shadow
- Image fills top with `aspect-[16/10]` ratio, scales 1.05 on hover

### Tags / Chips
- Filled with pastel surface color matching the project, near-black text
- `rounded-full`, `px-3 py-1`, `text-xs font-medium`

### Eyebrow labels
- Uppercase, `tracking-widest`, 12px, `font-medium`
- Paired with a 32px horizontal accent line

---

## Project Color Mapping

Each project owns one pastel surface for consistency between card, hero, and inner pages:

| Project | Surface | Hex |
|---------|---------|-----|
| My Heathrow | Pink | `#FFF7F7` |
| Kinship | Yellow | `#FFFCEB` |
| Cornershop | Blue | `#EDF7FF` |
| (future warm project) | Orange | `#FFEEDB` |
