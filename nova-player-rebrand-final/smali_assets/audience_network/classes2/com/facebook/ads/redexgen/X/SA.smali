.class public final Lcom/facebook/ads/redexgen/X/SA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeBannerAdApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/S7;,
        Lcom/facebook/ads/redexgen/X/S8;,
        Lcom/facebook/ads/redexgen/X/S9;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1641
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "068yMtBHtCdtzUYBTQD9IwnMWW1doBJF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2l8Hok5ewW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SqMVYGMc7AyphtDxx4DkXGESiOtqp3Wk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "n7xht10RjuH04nLwyOxbbpbZUJ6bFNP5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hemUdCIRyaFDmP64bLQtQG29khNbMpFH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0krrnlsRXu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "j9YMm5Kfv7iMZif7VGfsQGY8YQ9Z0I42"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SiUubuHC3Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SA;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SA;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 2

    .line 63612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63613
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Lcom/facebook/ads/redexgen/X/UK;

    .line 63614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Lcom/facebook/ads/redexgen/X/UK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vq;->A05:Lcom/facebook/ads/redexgen/X/Vq;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1i(Lcom/facebook/ads/redexgen/X/Vq;)V

    .line 63615
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/SA;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/SA;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/SA;->A02:[Ljava/lang/String;

    const-string v1, "SDJ7CqIuYGJEmotuvG7btG7Q2tCK4c6p"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "3TZdd6KNeaSFSkmrHNZK7GULPPfkGOEa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr p1, p2

    add-int/lit8 v0, p1, -0x32

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SA;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x32t
        -0x36t
        -0x37t
        -0x3t
        -0x14t
        -0xft
        -0x13t
        -0xat
        -0x15t
        -0x13t
        -0x2at
        -0x13t
        -0x4t
        -0x1t
        -0x9t
        -0x6t
        -0xdt
    .end array-data
.end method

.method private A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .locals 8

    .line 63616
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/UK;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UK;

    move-result-object v3

    .line 63617
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/UK;
    new-instance v4, Lcom/facebook/ads/redexgen/X/h4;

    invoke-direct {v4, p0, p1, v3}, Lcom/facebook/ads/redexgen/X/h4;-><init>(Lcom/facebook/ads/redexgen/X/SA;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/UK;)V

    .line 63618
    .local v1, "nativeBannerImageLoadTaskListener":Lcom/facebook/ads/redexgen/X/S8;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A19()Lcom/facebook/ads/redexgen/X/Vb;

    move-result-object v7

    .line 63619
    .local v2, "adIcon":Lcom/facebook/ads/redexgen/X/Vb;
    if-eqz v7, :cond_3

    .line 63620
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A14()Lcom/facebook/ads/redexgen/X/Sx;

    move-result-object v1

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0N(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 63621
    .local v3, "preloadedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/SA;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63622
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/SA;->A02:[Ljava/lang/String;

    const-string v1, "oesEo3u5gOmbsNZfXjsimFyw8pPXYbZZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Rp;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 63623
    .local v4, "adContextWrapper":Lcom/facebook/ads/redexgen/X/gi;
    if-eqz v5, :cond_2

    .line 63624
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A1t()Z

    move-result v2

    .line 63625
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A1I()Ljava/lang/String;

    move-result-object v1

    .line 63626
    invoke-static {v0, v5, v2, v1}, Lcom/facebook/ads/redexgen/X/UK;->A05(Lcom/facebook/ads/redexgen/X/gi;Landroid/graphics/Bitmap;ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63627
    .local v5, "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1, p1}, Lcom/facebook/ads/redexgen/X/UK;->A0f(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 63628
    new-instance v0, Lcom/facebook/ads/redexgen/X/h3;

    invoke-direct {v0, p0, v3, v1}, Lcom/facebook/ads/redexgen/X/h3;-><init>(Lcom/facebook/ads/redexgen/X/SA;Lcom/facebook/ads/redexgen/X/UK;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 63629
    .end local v5    # "iconViewDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 63630
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A1t()Z

    move-result v1

    const/4 v6, 0x0

    new-instance v5, Lcom/facebook/ads/redexgen/X/S7;

    invoke-direct {v5, v0, v4, v1, v6}, Lcom/facebook/ads/redexgen/X/S7;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/S8;ZLcom/facebook/ads/redexgen/X/h4;)V

    .line 63631
    .local v5, "loadImageTask":Lcom/facebook/ads/redexgen/X/S7;
    const/4 v0, 0x1

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/S9;

    .line 63632
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Vb;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A1I()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/S9;

    invoke-direct {v1, v2, v0, v6}, Lcom/facebook/ads/redexgen/X/S9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/h4;)V

    const/4 v0, 0x0

    aput-object v1, v4, v0

    .line 63633
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/S7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 63634
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A1A()Lcom/facebook/ads/redexgen/X/Tv;

    move-result-object v5

    .line 63635
    .local v3, "adListener":Lcom/facebook/ads/redexgen/X/Tv;
    sget-object v6, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v1, Lcom/facebook/ads/redexgen/X/SA;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_0

    .line 63636
    .local v4, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    sget-object v2, Lcom/facebook/ads/redexgen/X/SA;->A02:[Ljava/lang/String;

    const-string v1, "aFZFEDb6phUkMJAuumeHd9ws0nVx9tBY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UK;->A16()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 63637
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    .line 63638
    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, -0x1

    invoke-interface {v4, v0, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Lt;->A3N(JILjava/lang/String;)V

    .line 63639
    if-eqz v5, :cond_4

    .line 63640
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Vm;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/Vm;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/VP;->ADp(Lcom/facebook/ads/redexgen/X/Vm;)V

    .line 63641
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SA;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63642
    .end local v3    # "adListener":Lcom/facebook/ads/redexgen/X/Tv;
    .end local v4    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :goto_0
    return-void
.end method


# virtual methods
.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1

    .line 63643
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/SA;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 63644
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 63645
    .local p0, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 63646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {p0, p2, v0}, Lcom/facebook/ads/redexgen/X/SA;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    .line 63647
    :cond_0
    if-eqz p3, :cond_1

    .line 63648
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Lcom/facebook/ads/redexgen/X/UK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/SA;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63649
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/UK;->A1S(Landroid/view/View;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 63650
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/SA;->A02:[Ljava/lang/String;

    const-string v1, "ll9cTRtW3a"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "WGLVGgKdvO"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UK;->A1T(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 63651
    :goto_0
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 63652
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/SA;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 63653
    return-void
.end method

.method public final registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 63654
    .local p3, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 63655
    invoke-virtual {p2}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/hC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Lcom/facebook/ads/redexgen/X/UK;

    .line 63656
    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/hC;->A0X(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V

    .line 63657
    :cond_0
    if-eqz p3, :cond_1

    .line 63658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/facebook/ads/redexgen/X/UK;->A1W(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;Z)V

    .line 63659
    :goto_0
    return-void

    .line 63660
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SA;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/UK;->A1X(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Z)V

    goto :goto_0
.end method
