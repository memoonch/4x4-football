# Main menu artwork

Built-in image generation was used. Project asset: `webgl/menu-cinematic.png`.
The full image remains at 1536 x 1024; menu scales it to the 670 x 450 stage.
Interactive buttons and all title/label text are native UI, not baked into art.
No button icons were added. Only the original two actions remain.

## Final generation prompt

Use case: stylized-concept. Create a production background asset for the main menu of the game 4x4 Football. Cinematic high quality realistic 3D game key art, landscape 3:2 aspect ratio. Low camera at asphalt football stadium pitch, packed grandstands, stadium floodlights under bright blue partly cloudy sky. A mud-splashed vivid green boxy off-road SUV fills the far right edge, its large front wheel visible, cropped by frame. A scuffed black and white football prominently in lower right foreground. A red boxy off-road SUV faces camera in front of a white football goal at middle distance in the center. Match the uploaded reference's off-road football stadium energy, rich material detail, polished lighting, clean readable composition. Reserve the upper center quarter for a separate graphic title badge, with simple sky and no objects there. Reserve lower left quarter for two menu buttons: dark asphalt with subtle shadows, no foreground vehicle or ball there. Charcoal advertising barriers with small lime safety markings, no writing. IMPORTANT deliver background artwork ONLY, no logo, no text, no letters, no buttons, no HUD, no UI, no watermarks. This is a full bleed game menu backdrop to be composed with native UI separately.

## Browser checks

New Game opens the unchanged team-selection screen. Back to Menu returns to the
cinematic skin. No error/warning entries appeared during review. Both standard
and WebGL SWFs rebuilt, scene-readiness checks pass, and the private-field
cleanup binding check passes.
