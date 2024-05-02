static const char norm_fg[] = "#EDA0EF";
static const char norm_bg[] = "#0A092E";
static const char norm_border[] = "#0A092E";

static const char sel_fg[] = "#000000";
static const char sel_bg[] = "#EDA0EF";
static const char sel_border[] = "#EDA0EF";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
