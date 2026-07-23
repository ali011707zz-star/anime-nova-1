.class public final Lcom/facebook/ads/redexgen/X/Cz;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/fU;
.implements Lcom/facebook/ads/redexgen/X/fk;
.implements Lcom/facebook/ads/redexgen/X/fW;


# static fields
.field public static A0O:[B

.field public static A0P:[Ljava/lang/String;

.field public static final A0Q:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Landroid/net/Uri;

.field public A07:Landroid/view/Surface;

.field public A08:Landroid/view/View;

.field public A09:Landroid/widget/MediaController;

.field public A0A:Lcom/facebook/ads/redexgen/X/gi;

.field public A0B:Lcom/facebook/ads/redexgen/X/et;

.field public A0C:Lcom/facebook/ads/redexgen/X/fX;

.field public A0D:Lcom/facebook/ads/redexgen/X/fm;

.field public A0E:Lcom/facebook/ads/redexgen/X/fm;

.field public A0F:Lcom/facebook/ads/redexgen/X/fn;

.field public A0G:Ljava/lang/String;

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 690
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IkPvJjq0d6kyiPKTTS2lCNhYTces79dt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hRUerIi7AJ3jOkGNT2UiHpaxkSFge2bW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Avvx3DFr2S27"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gmbQyyKnf6LsZqIL76N8lXPSt8AAYSbH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tA8cc29oavr4xgkZce"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dMNAf6LzALyzJxRA4XpvvVCIX8V0s"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cz;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Cz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cz;->A0Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 2

    .line 33122
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 33123
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    .line 33124
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0E:Lcom/facebook/ads/redexgen/X/fm;

    .line 33125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0M:Z

    .line 33126
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0N:Z

    .line 33127
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0J:Z

    .line 33128
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A03:I

    .line 33129
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A02:I

    .line 33130
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A00:F

    .line 33131
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A01:I

    .line 33132
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0I:Z

    .line 33133
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0H:Z

    .line 33134
    sget-object v0, Lcom/facebook/ads/redexgen/X/et;->A03:Lcom/facebook/ads/redexgen/X/et;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0B:Lcom/facebook/ads/redexgen/X/et;

    .line 33135
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0K:Z

    .line 33136
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0L:Z

    .line 33137
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 33138
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V
    .locals 2

    .line 33139
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33140
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    .line 33141
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0E:Lcom/facebook/ads/redexgen/X/fm;

    .line 33142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0M:Z

    .line 33143
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0N:Z

    .line 33144
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0J:Z

    .line 33145
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A03:I

    .line 33146
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A02:I

    .line 33147
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A00:F

    .line 33148
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A01:I

    .line 33149
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0I:Z

    .line 33150
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0H:Z

    .line 33151
    sget-object v0, Lcom/facebook/ads/redexgen/X/et;->A03:Lcom/facebook/ads/redexgen/X/et;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0B:Lcom/facebook/ads/redexgen/X/et;

    .line 33152
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0K:Z

    .line 33153
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0L:Z

    .line 33154
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 33155
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 33156
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33157
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    .line 33158
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0E:Lcom/facebook/ads/redexgen/X/fm;

    .line 33159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0M:Z

    .line 33160
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0N:Z

    .line 33161
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0J:Z

    .line 33162
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A03:I

    .line 33163
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A02:I

    .line 33164
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A00:F

    .line 33165
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A01:I

    .line 33166
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0I:Z

    .line 33167
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0H:Z

    .line 33168
    sget-object v0, Lcom/facebook/ads/redexgen/X/et;->A03:Lcom/facebook/ads/redexgen/X/et;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0B:Lcom/facebook/ads/redexgen/X/et;

    .line 33169
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0K:Z

    .line 33170
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0L:Z

    .line 33171
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 33172
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Cz;)Landroid/widget/MediaController;
    .locals 0

    .line 33173
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A09:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fX;
    .locals 0

    .line 33174
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fn;
    .locals 0

    .line 33175
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0F:Lcom/facebook/ads/redexgen/X/fn;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cz;->A0O:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 5

    .line 33176
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/fX;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    .line 33177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/fX;->A0H(Lcom/facebook/ads/redexgen/X/fW;)V

    .line 33178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/fX;->A0G(Lcom/facebook/ads/redexgen/X/fU;)V

    .line 33179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/fX;->A0I(Z)V

    .line 33180
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0J:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0I:Z

    if-nez v0, :cond_0

    .line 33181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v1

    .line 33182
    .local v0, "activityContext":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 33183
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A09:Landroid/widget/MediaController;

    .line 33184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A09:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A08:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 33185
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A09:Landroid/widget/MediaController;

    new-instance v0, Lcom/facebook/ads/redexgen/X/fd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fd;-><init>(Lcom/facebook/ads/redexgen/X/Cz;)V

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 33186
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A09:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 33187
    .end local v0    # "activityContext":Landroid/app/Activity;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0G:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0G:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33188
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A08:Landroid/view/View;

    goto :goto_0

    .line 33189
    :cond_2
    const/4 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const-string v1, "TO7k5EC8ZWp6tpojZW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Cz;->A09:Landroid/widget/MediaController;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const-string v1, "fS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "9d"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Cz;->A09:Landroid/widget/MediaController;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const-string v1, "Pg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "vu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 33190
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0K:Z

    if-eqz v0, :cond_6

    .line 33191
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A06:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fX;->A0F(Lcom/facebook/ads/redexgen/X/ge;Landroid/net/Uri;)V

    .line 33192
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A08:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33193
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33194
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/Cz;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 33195
    :cond_7
    return-void
.end method

.method private A05()V
    .locals 2

    .line 33196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-nez v0, :cond_0

    .line 33197
    return-void

    .line 33198
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A08()Lcom/facebook/ads/redexgen/X/fV;

    move-result-object v0

    .line 33199
    .local v0, "videoFormat":Lcom/facebook/ads/redexgen/X/fV;
    if-eqz v0, :cond_1

    .line 33200
    iget v1, v0, Lcom/facebook/ads/redexgen/X/fV;->A01:I

    iget v0, v0, Lcom/facebook/ads/redexgen/X/fV;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->A08(II)V

    .line 33201
    :cond_1
    return-void
.end method

.method private A06()V
    .locals 2

    .line 33202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A07:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A07:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 33204
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A07:Landroid/view/Surface;

    .line 33205
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-eqz v0, :cond_1

    .line 33206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A09()V

    .line 33207
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    .line 33208
    :cond_1
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A09:Landroid/widget/MediaController;

    .line 33209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0N:Z

    .line 33210
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33211
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x171

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cz;->A0O:[B

    return-void

    :array_0
    .array-data 1
        -0x38t
        -0xbt
        -0xbt
        -0xet
        -0xbt
        -0x5dt
        -0x14t
        -0xft
        -0x5dt
        -0x38t
        -0x5t
        -0xet
        -0x2dt
        -0x11t
        -0x1ct
        -0x4t
        -0x18t
        -0xbt
        -0x5dt
        -0x19t
        -0x8t
        -0x18t
        -0x5dt
        -0x9t
        -0xet
        -0x5dt
        -0xet
        -0xft
        -0x2at
        -0x8t
        -0xbt
        -0x17t
        -0x1ct
        -0x1at
        -0x18t
        -0x29t
        -0x18t
        -0x5t
        -0x9t
        -0x8t
        -0xbt
        -0x18t
        -0x39t
        -0x18t
        -0xat
        -0x9t
        -0xbt
        -0xet
        -0x4t
        -0x18t
        -0x19t
        -0x5dt
        -0x19t
        -0x8t
        -0xbt
        -0x14t
        -0xft
        -0x16t
        -0x5dt
        -0xat
        -0x18t
        -0x9t
        -0x27t
        -0x14t
        -0x19t
        -0x18t
        -0xet
        -0x2at
        -0x8t
        -0xbt
        -0x17t
        -0x1ct
        -0x1at
        -0x18t
        -0x5dt
        -0x18t
        0x1bt
        0x12t
        -0xdt
        0xft
        0x4t
        0x1ct
        0x8t
        0x15t
        -0x3dt
        0x8t
        0x15t
        0x15t
        0x12t
        0x15t
        -0x3dt
        0x17t
        0x15t
        0xct
        0xat
        0xat
        0x8t
        0x15t
        0x8t
        0x7t
        -0x3dt
        0x5t
        0x1ct
        -0x3dt
        0x12t
        0x11t
        -0xat
        0x18t
        0x15t
        0x9t
        0x4t
        0x6t
        0x8t
        -0x9t
        0x8t
        0x1bt
        0x17t
        0x18t
        0x15t
        0x8t
        -0x19t
        0x8t
        0x16t
        0x17t
        0x15t
        0x12t
        0x1ct
        0x8t
        0x7t
        -0x3dt
        0x7t
        0x18t
        0x15t
        0xct
        0x11t
        0xat
        -0x3dt
        0x13t
        0x4t
        0x18t
        0x16t
        0x8t
        -0x3dt
        -0x1at
        0xet
        0xet
        0x6t
        0xbt
        0x4t
        -0x41t
        0x0t
        0xbt
        0x16t
        0x0t
        0x18t
        0x12t
        -0x41t
        0x13t
        0x7t
        0x11t
        0xet
        0x16t
        -0x41t
        0x0t
        0xdt
        -0x41t
        0x4t
        0x17t
        0x2t
        0x4t
        0xft
        0x13t
        0x8t
        0xet
        0xdt
        -0x41t
        0x16t
        0x8t
        0x13t
        0x7t
        -0x41t
        0x12t
        0x4t
        0x13t
        -0x1ft
        0x0t
        0x2t
        0xat
        0x6t
        0x11t
        0xet
        0x14t
        0xdt
        0x3t
        -0x1dt
        0x11t
        0x0t
        0x16t
        0x0t
        0x1t
        0xbt
        0x4t
        -0x41t
        0xet
        0xdt
        -0x41t
        -0x13t
        0xet
        0x14t
        0x6t
        0x0t
        0x13t
        -0x41t
        0x0t
        0x1t
        0xet
        0x15t
        0x4t
        -0x33t
        -0x41t
        0x12t
        0xet
        -0x41t
        0x16t
        0x4t
        -0x41t
        0x12t
        0x8t
        0xbt
        0x4t
        0xdt
        0x13t
        0xbt
        0x18t
        -0x41t
        0x8t
        0x6t
        0xdt
        0xet
        0x11t
        0x4t
        -0x41t
        0x8t
        0x13t
        -0x33t
        -0x5ct
        -0x34t
        -0x34t
        -0x3ct
        -0x37t
        -0x3et
        0x7dt
        -0x42t
        -0x37t
        -0x2ct
        -0x42t
        -0x2at
        -0x30t
        0x7dt
        -0x2ft
        -0x3bt
        -0x31t
        -0x34t
        -0x2ct
        0x7dt
        -0x42t
        -0x35t
        0x7dt
        -0x3et
        -0x2bt
        -0x40t
        -0x3et
        -0x33t
        -0x2ft
        -0x3at
        -0x34t
        -0x35t
        0x7dt
        -0x2ct
        -0x3at
        -0x2ft
        -0x3bt
        0x7dt
        -0x30t
        -0x3et
        -0x2ft
        -0x5dt
        -0x34t
        -0x31t
        -0x3et
        -0x3ct
        -0x31t
        -0x34t
        -0x2et
        -0x35t
        -0x3ft
        0x7dt
        -0x34t
        -0x35t
        0x7dt
        -0x55t
        -0x34t
        -0x2et
        -0x3ct
        -0x42t
        -0x2ft
        0x7dt
        -0x42t
        -0x41t
        -0x34t
        -0x2dt
        -0x3et
        -0x75t
        0x7dt
        -0x30t
        -0x34t
        0x7dt
        -0x2ct
        -0x3et
        0x7dt
        -0x30t
        -0x3at
        -0x37t
        -0x3et
        -0x35t
        -0x2ft
        -0x37t
        -0x2at
        0x7dt
        -0x3at
        -0x3ct
        -0x35t
        -0x34t
        -0x31t
        -0x3et
        0x7dt
        -0x3at
        -0x2ft
        -0x75t
        -0x3et
        -0x2bt
        -0x30t
        -0x2ft
        -0x25t
        -0x74t
        -0x21t
        -0x20t
        -0x33t
        -0x20t
        -0x2ft
        -0x74t
        -0x31t
        -0x2ct
        -0x33t
        -0x26t
        -0x2dt
        -0x2ft
        -0x30t
        -0x74t
        -0x20t
        -0x25t
        -0x74t
        -0x19t
        -0x1bt
        -0x12t
        -0x1bt
        -0xet
        -0x17t
        -0x1dt
    .end array-data
.end method

.method private A08(II)V
    .locals 1

    .line 33212
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A02:I

    if-eq p2, v0, :cond_1

    .line 33213
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A03:I

    .line 33214
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Cz;->A02:I

    .line 33215
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A03:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A02:I

    if-eqz v0, :cond_1

    .line 33216
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->requestLayout()V

    .line 33217
    :cond_1
    return-void
.end method

.method public static A09()Z
    .locals 1

    .line 33218
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fX;->A03()Z

    move-result v0

    return v0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V
    .locals 4

    .line 33412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    if-eq p1, v0, :cond_2

    .line 33413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A05()Lcom/facebook/ads/redexgen/X/TD;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TD;->AAO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x153

    const/16 v1, 0x17

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33415
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    .line 33416
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_1

    .line 33417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0N:Z

    .line 33418
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0F:Lcom/facebook/ads/redexgen/X/fn;

    if-eqz v0, :cond_2

    .line 33419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0F:Lcom/facebook/ads/redexgen/X/fn;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/fn;->AGd(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33420
    :cond_2
    return-void
.end method


# virtual methods
.method public final synthetic A0A()V
    .locals 1

    .line 33219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    .line 33220
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33221
    return-void

    .line 33222
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->A9d()V

    .line 33223
    return-void
.end method

.method public final A9d()V
    .locals 2

    .line 33224
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0H:Z

    if-nez v0, :cond_0

    .line 33225
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->AGr(ZI)V

    .line 33226
    :cond_0
    return-void
.end method

.method public final A9q()Z
    .locals 1

    .line 33227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9r()Z
    .locals 1

    .line 33228
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0N:Z

    return v0
.end method

.method public final AAc()Z
    .locals 1

    .line 33229
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0M:Z

    return v0
.end method

.method public final AFL(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .line 33230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->ACW(Ljava/lang/String;)V

    .line 33231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 33232
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    .line 33233
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3i(I)V

    .line 33234
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A03:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 33236
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1N:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, p2}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 33237
    const/16 v2, 0x16a

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 33238
    return-void
.end method

.method public final AFM(ZI)V
    .locals 7

    .line 33239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-nez v0, :cond_0

    .line 33240
    return-void

    .line 33241
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 33242
    :cond_1
    :goto_0
    return-void

    .line 33243
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cz;->A05()V

    .line 33244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A04:J

    .line 33245
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setRequestedVolume(F)V

    .line 33246
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A05:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Cz;->A05:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A07()J

    move-result-wide v1

    cmp-long v0, v5, v1

    if-gez v0, :cond_2

    .line 33247
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A05:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/fX;->A0D(J)V

    .line 33248
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Cz;->A05:J

    .line 33249
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A06()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0N:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const-string v1, "T7dswaxt6nrXidjLTysunwDPvSX4Ru7O"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ANtZP5BaeS0Nfv6aTfoZkiJnjx34FJZx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    .line 33250
    :goto_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const-string v1, "dNFvbzP2EYglZVOCcO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const-string v1, "3r7lyS1P0Mh4AObuDTaZ0iezAfx5hfrS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    goto :goto_1

    .line 33251
    :pswitch_1
    if-eqz p1, :cond_4

    .line 33252
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33253
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 33254
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/fX;->A0I(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 33255
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const-string v1, "0npepmR7M4IL"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "iLUr5jfc2zzHXCQiIz3oIHQjifgBE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez p1, :cond_7

    .line 33256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A0A()V

    .line 33257
    :cond_7
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0N:Z

    goto/16 :goto_0

    .line 33258
    :cond_8
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_1

    .line 33259
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33260
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0E:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const-string v1, "MPZySUBjU8eQIDiJ8j"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v3, v0, :cond_1

    .line 33261
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0B:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->AK6(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 33262
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0E:Lcom/facebook/ads/redexgen/X/fm;

    goto/16 :goto_0

    .line 33263
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cz;->A05()V

    .line 33264
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A01:I

    if-ltz v0, :cond_1

    .line 33265
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Cz;->A01:I

    .line 33266
    .local v0, "seekFrom":I
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A01:I

    .line 33267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0F:Lcom/facebook/ads/redexgen/X/fn;

    if-eqz v0, :cond_1

    .line 33268
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0F:Lcom/facebook/ads/redexgen/X/fn;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->getCurrentPosition()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/fn;->AFr(II)V

    goto/16 :goto_0

    .line 33269
    :pswitch_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33270
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final AGa(IIIF)V
    .locals 0

    .line 33271
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cz;->A08(II)V

    .line 33272
    return-void
.end method

.method public final AGr(ZI)V
    .locals 2

    .line 33273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/Lt;->A3e(I)V

    .line 33274
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0E:Lcom/facebook/ads/redexgen/X/fm;

    .line 33275
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0M:Z

    .line 33276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-eqz v0, :cond_0

    .line 33277
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fX;->A0I(Z)V

    .line 33278
    :goto_0
    return-void

    .line 33279
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    goto :goto_0
.end method

.method public final AK1(I)V
    .locals 2

    .line 33280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->ACX(I)V

    .line 33281
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A09:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33282
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->AKF(I)V

    .line 33283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A05:J

    .line 33284
    return-void
.end method

.method public final AK6(Lcom/facebook/ads/redexgen/X/et;I)V
    .locals 4

    .line 33285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/Lt;->A3p(I)V

    .line 33286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0M:Z

    .line 33287
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0E:Lcom/facebook/ads/redexgen/X/fm;

    .line 33288
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0B:Lcom/facebook/ads/redexgen/X/et;

    .line 33289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-nez v0, :cond_1

    .line 33290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A06:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setup(Landroid/net/Uri;)V

    .line 33291
    :cond_0
    :goto_0
    return-void

    .line 33292
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A07:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_0

    .line 33293
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fX;->A0I(Z)V

    .line 33294
    sget-object v3, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const-string v1, "Wi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "9L"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AKF(I)V
    .locals 1

    .line 33295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->A3r(I)V

    .line 33296
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0E:Lcom/facebook/ads/redexgen/X/fm;

    .line 33297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-eqz v0, :cond_0

    .line 33298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A0B()V

    .line 33299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A09()V

    .line 33300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    .line 33301
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33302
    return-void
.end method

.method public final destroy()V
    .locals 0

    .line 33303
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cz;->A06()V

    .line 33304
    return-void
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 33305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A06()J

    move-result-wide v1

    long-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    .line 33306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-nez v0, :cond_0

    .line 33307
    const/4 v0, 0x0

    return v0

    .line 33308
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A07()J

    move-result-wide v1

    long-to-int v0, v1

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 33309
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A04:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/et;
    .locals 1

    .line 33310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0B:Lcom/facebook/ads/redexgen/X/et;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/fm;
    .locals 1

    .line 33311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/fm;
    .locals 1

    .line 33312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0E:Lcom/facebook/ads/redexgen/X/fm;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 33313
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A02:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 33314
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A03:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 33315
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 33316
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 33317
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 33318
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33319
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33320
    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A03:Lcom/facebook/ads/redexgen/X/fm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setVideoState(Lcom/facebook/ads/redexgen/X/fm;)V

    .line 33321
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->AKF(I)V

    .line 33322
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 33323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 33324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A07:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 33325
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A07:Landroid/view/Surface;

    .line 33326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-nez v0, :cond_1

    .line 33327
    return-void

    .line 33328
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A07:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/fX;->A0E(Landroid/view/Surface;)V

    .line 33329
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0M:Z

    if-nez v0, :cond_2

    .line 33330
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0B:Lcom/facebook/ads/redexgen/X/et;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->AK6(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 33331
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 6

    .line 33332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 33333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A07:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 33334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A07:Landroid/view/Surface;

    .line 33335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-eqz v0, :cond_0

    .line 33336
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/fX;->A0E(Landroid/view/Surface;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33337
    :catch_0
    move-exception v5

    .line 33338
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 33339
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x4b

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33340
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33341
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Lt;->ACW(Ljava/lang/String;)V

    .line 33342
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_1

    .line 33343
    const/4 v1, 0x0

    const/4 v0, 0x5

    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->AGr(ZI)V

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33344
    :catch_1
    move-exception v5

    .line 33345
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 33346
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4b

    const/16 v1, 0x44

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33347
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33348
    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Lt;->ACW(Ljava/lang/String;)V

    .line 33349
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 33350
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 11

    .line 33351
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33352
    return-void

    .line 33353
    :cond_0
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cz;->A0P:[Ljava/lang/String;

    const-string v1, "Md"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "f0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A08:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v4, v0, :cond_2

    .line 33354
    return-void

    .line 33355
    :cond_2
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Cz;->A0L:Z

    if-nez v0, :cond_3

    .line 33356
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Cz;->A0L:Z

    .line 33357
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AIz()V

    .line 33358
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->getCurrentPosition()I

    move-result v0

    int-to-long v4, v0

    .line 33359
    .local v10, "encoding_pts":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->getCurrentPosition()I

    move-result v0

    int-to-long v6, v0

    .line 33360
    .local p1, "playback_pts":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 33361
    .local p3, "unix_pts":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->getVolume()F

    move-result v10

    .line 33362
    .local v1, "volume":F
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Cz;->A0F:Lcom/facebook/ads/redexgen/X/fn;

    if-eqz v0, :cond_4

    .line 33363
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Cz;->A0F:Lcom/facebook/ads/redexgen/X/fn;

    invoke-interface/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/fn;->ADy(JJJF)V

    .line 33364
    :cond_4
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 4

    .line 33365
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 33366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-nez v0, :cond_0

    .line 33367
    return-void

    .line 33368
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A09:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A09:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33369
    return-void

    .line 33370
    :cond_1
    if-nez p1, :cond_5

    .line 33371
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_3

    .line 33372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0H()Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A01()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    .line 33373
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A25(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_4

    .line 33374
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/fc;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/fc;-><init>(Lcom/facebook/ads/redexgen/X/Cz;)V

    .line 33375
    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33376
    :cond_3
    :goto_0
    return-void

    .line 33377
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->A9d()V

    goto :goto_0

    .line 33378
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0M:Z

    if-nez v0, :cond_3

    .line 33379
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0B:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->AK6(Lcom/facebook/ads/redexgen/X/et;I)V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 3

    .line 33380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-eqz v0, :cond_0

    .line 33381
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Cz;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A01:I

    .line 33382
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    int-to-long v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/fX;->A0D(J)V

    .line 33383
    :goto_0
    return-void

    .line 33384
    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A05:J

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 33385
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 33386
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33387
    :cond_0
    :goto_0
    return-void

    .line 33388
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33389
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cz;->A0Q:Ljava/lang/String;

    const/16 v2, 0x8f

    const/16 v1, 0x66

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 33390
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0H:Z

    .line 33391
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 33392
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A08:Landroid/view/View;

    .line 33393
    new-instance v0, Lcom/facebook/ads/redexgen/X/ff;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ff;-><init>(Lcom/facebook/ads/redexgen/X/Cz;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 33394
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 33395
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 33396
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 33397
    :cond_0
    :goto_0
    return-void

    .line 33398
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33399
    sget-object v3, Lcom/facebook/ads/redexgen/X/Cz;->A0Q:Ljava/lang/String;

    const/16 v2, 0xf5

    const/16 v1, 0x5e

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cz;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 33400
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0J:Z

    .line 33401
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0I:Z

    if-nez v0, :cond_0

    .line 33402
    new-instance v0, Lcom/facebook/ads/redexgen/X/fe;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/fe;-><init>(Lcom/facebook/ads/redexgen/X/Cz;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Cz;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 33403
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    .line 33404
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A00:F

    .line 33405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A08:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0D:Lcom/facebook/ads/redexgen/X/fm;

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A04:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    .line 33406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/fX;->A0C(F)V

    .line 33407
    :cond_0
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    .line 33408
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0K:Z

    .line 33409
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0

    .line 33410
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0G:Ljava/lang/String;

    .line 33411
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/fn;)V
    .locals 0

    .line 33421
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0F:Lcom/facebook/ads/redexgen/X/fn;

    .line 33422
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 1

    .line 33423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0A:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3h()V

    .line 33424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cz;->A0C:Lcom/facebook/ads/redexgen/X/fX;

    if-eqz v0, :cond_0

    .line 33425
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cz;->A06()V

    .line 33426
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cz;->A06:Landroid/net/Uri;

    .line 33427
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Cz;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 33428
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cz;->A04()V

    .line 33429
    return-void
.end method
