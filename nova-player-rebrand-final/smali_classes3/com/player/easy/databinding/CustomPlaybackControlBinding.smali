.class public final Lcom/player/easy/databinding/CustomPlaybackControlBinding;
.super Ljava/lang/Object;
.source "CustomPlaybackControlBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brightnessBar:Lcom/player/easy/widget/BrightnessBar;

.field public final exoAnimeTitle:Landroid/widget/TextView;

.field public final exoEpisodeTitle:Landroid/widget/TextView;

.field public final exoVideoFinish:Landroid/widget/ImageButton;

.field public final gradientBackground:Landroid/view/View;

.field public final playerControlsPrimary:Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;

.field public final playerControlsSecondary:Lcom/player/easy/databinding/PlayerControlsSecondaryBinding;

.field public final playerGroup:Landroidx/constraintlayout/widget/Group;

.field public final playerGroupBrightness:Landroidx/constraintlayout/widget/Group;

.field public final playerGroupVolume:Landroidx/constraintlayout/widget/Group;

.field public final playerLockButtonOutside:Lcom/player/easy/databinding/PlayerLockButtonBinding;

.field public final playerSeekbar:Lcom/player/easy/databinding/PlayerSeekbarBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final skipIntro:Lcom/google/android/material/button/MaterialButton;

.field public final volumeBar:Lcom/player/easy/widget/VolumeBar;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/player/easy/widget/BrightnessBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/view/View;Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;Lcom/player/easy/databinding/PlayerControlsSecondaryBinding;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Lcom/player/easy/databinding/PlayerLockButtonBinding;Lcom/player/easy/databinding/PlayerSeekbarBinding;Lcom/google/android/material/button/MaterialButton;Lcom/player/easy/widget/VolumeBar;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    iput-object p2, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->brightnessBar:Lcom/player/easy/widget/BrightnessBar;

    .line 80
    iput-object p3, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->exoAnimeTitle:Landroid/widget/TextView;

    .line 81
    iput-object p4, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->exoEpisodeTitle:Landroid/widget/TextView;

    .line 82
    iput-object p5, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->exoVideoFinish:Landroid/widget/ImageButton;

    .line 83
    iput-object p6, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->gradientBackground:Landroid/view/View;

    .line 84
    iput-object p7, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->playerControlsPrimary:Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;

    .line 85
    iput-object p8, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->playerControlsSecondary:Lcom/player/easy/databinding/PlayerControlsSecondaryBinding;

    .line 86
    iput-object p9, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->playerGroup:Landroidx/constraintlayout/widget/Group;

    .line 87
    iput-object p10, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->playerGroupBrightness:Landroidx/constraintlayout/widget/Group;

    .line 88
    iput-object p11, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->playerGroupVolume:Landroidx/constraintlayout/widget/Group;

    .line 89
    iput-object p12, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->playerLockButtonOutside:Lcom/player/easy/databinding/PlayerLockButtonBinding;

    .line 90
    iput-object p13, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->playerSeekbar:Lcom/player/easy/databinding/PlayerSeekbarBinding;

    .line 91
    iput-object p14, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->skipIntro:Lcom/google/android/material/button/MaterialButton;

    .line 92
    iput-object p15, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->volumeBar:Lcom/player/easy/widget/VolumeBar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/player/easy/databinding/CustomPlaybackControlBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 122
    sget v1, Lcom/player/easy/R$id;->brightness_bar:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/player/easy/widget/BrightnessBar;

    if-eqz v5, :cond_0

    .line 128
    sget v1, Lcom/player/easy/R$id;->exo_anime_title:I

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 134
    sget v1, Lcom/player/easy/R$id;->exo_episode_title:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 140
    sget v1, Lcom/player/easy/R$id;->exo_video_finish:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageButton;

    if-eqz v8, :cond_0

    .line 146
    sget v1, Lcom/player/easy/R$id;->gradient_background:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 152
    sget v1, Lcom/player/easy/R$id;->player_controls_primary:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 157
    invoke-static {v2}, Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;

    move-result-object v10

    .line 159
    sget v1, Lcom/player/easy/R$id;->player_controls_secondary:I

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    invoke-static {v2}, Lcom/player/easy/databinding/PlayerControlsSecondaryBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerControlsSecondaryBinding;

    move-result-object v11

    .line 166
    sget v1, Lcom/player/easy/R$id;->player_group:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/constraintlayout/widget/Group;

    if-eqz v12, :cond_0

    .line 172
    sget v1, Lcom/player/easy/R$id;->player_group_brightness:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/constraintlayout/widget/Group;

    if-eqz v13, :cond_0

    .line 178
    sget v1, Lcom/player/easy/R$id;->player_group_volume:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/Group;

    if-eqz v14, :cond_0

    .line 184
    sget v1, Lcom/player/easy/R$id;->player_lock_button_outside:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 189
    invoke-static {v2}, Lcom/player/easy/databinding/PlayerLockButtonBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerLockButtonBinding;

    move-result-object v15

    .line 191
    sget v1, Lcom/player/easy/R$id;->player_seekbar:I

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    invoke-static {v2}, Lcom/player/easy/databinding/PlayerSeekbarBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerSeekbarBinding;

    move-result-object v16

    .line 198
    sget v1, Lcom/player/easy/R$id;->skip_intro:I

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/material/button/MaterialButton;

    if-eqz v17, :cond_0

    .line 204
    sget v1, Lcom/player/easy/R$id;->volume_bar:I

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/player/easy/widget/VolumeBar;

    if-eqz v18, :cond_0

    .line 210
    new-instance v3, Lcom/player/easy/databinding/CustomPlaybackControlBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v18}, Lcom/player/easy/databinding/CustomPlaybackControlBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/player/easy/widget/BrightnessBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/view/View;Lcom/player/easy/databinding/PlayerControlsPrimaryBinding;Lcom/player/easy/databinding/PlayerControlsSecondaryBinding;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Lcom/player/easy/databinding/PlayerLockButtonBinding;Lcom/player/easy/databinding/PlayerSeekbarBinding;Lcom/google/android/material/button/MaterialButton;Lcom/player/easy/widget/VolumeBar;)V

    return-object v3

    .line 216
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/CustomPlaybackControlBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/CustomPlaybackControlBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/player/easy/databinding/CustomPlaybackControlBinding;
    .locals 2

    .line 109
    sget v0, Lcom/player/easy/R$layout;->custom_playback_control:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/CustomPlaybackControlBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/player/easy/databinding/CustomPlaybackControlBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
