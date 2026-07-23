.class public final Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;
.super Landroid/view/Surface;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Fi;
    }
.end annotation


# static fields
.field public static A03:I

.field public static A04:Z

.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Fi;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 737
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ToLQMf4zVEPQ4KvEooDgfRDe7yK6oNRK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "K0o48H12GfZKMIt1wQk8mac7vZfrpMfZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "E5u"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BRaMCvq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "l9UvErrzvq13nAT2kKu87XSUotDZHlU4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KpcnqVP7VQEeHX003zJg7kklGvYVOXV6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nWaipra9RnK7e6o7QCyQoP578AoonQfH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "y6ffzf1HkvdiGAu1g8uZUTsw8JywLKMO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Fi;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    .line 36055
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 36056
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A02:Lcom/facebook/ads/redexgen/X/Fi;

    .line 36057
    iput-boolean p3, p0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A01:Z

    .line 36058
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Fi;Landroid/graphics/SurfaceTexture;ZLcom/facebook/ads/redexgen/X/Fh;)V
    .locals 0

    .line 36059
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;-><init>(Lcom/facebook/ads/redexgen/X/Fi;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public static A00(Landroid/content/Context;)I
    .locals 5

    .line 36060
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/4 v4, 0x0

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_1

    const/16 v2, 0x7f

    const/4 v1, 0x7

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A02(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x55

    const/4 v1, 0x6

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A02(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36061
    :cond_0
    return v4

    .line 36062
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    if-ge v0, v3, :cond_2

    .line 36063
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 36064
    const/16 v2, 0x5b

    const/16 v1, 0x24

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36065
    return v4

    .line 36066
    :cond_2
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 36067
    .local v0, "display":Landroid/opengl/EGLDisplay;
    const/16 v0, 0x3055

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v3

    .line 36068
    .local v2, "eglExtensions":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 36069
    return v4

    .line 36070
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 36071
    return v4

    .line 36072
    :cond_4
    const/16 v2, 0x19

    const/16 v1, 0x1b

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36073
    const/4 v0, 0x1

    .line 36074
    :goto_0
    return v0

    .line 36075
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static A01(Landroid/content/Context;Z)Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;
    .locals 2

    .line 36076
    invoke-static {}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A03()V

    .line 36077
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A05(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 36078
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fi;-><init>()V

    .line 36079
    .local v1, "thread":Lcom/facebook/ads/redexgen/X/Fi;
    if-eqz p1, :cond_1

    sget v1, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A03:I

    :cond_1
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Fi;->A04(I)Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    move-result-object v0

    return-object v0

    .line 36080
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x48

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A06:[Ljava/lang/String;

    const-string v1, "JqkQNQrwLqX5JhphVyehfhpUDDUdSiIM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 3

    .line 36081
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    .line 36082
    return-void

    .line 36083
    :cond_0
    const/16 v2, 0x34

    const/16 v1, 0x21

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x86

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A05:[B

    sget-object v1, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A06:[Ljava/lang/String;

    const-string v1, "LdigSr1cvkrlhyQY3m7v5wXMq9EFvMie"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x16t
        0x14t
        0x1ft
        0xct
        0x16t
        0xbt
        0x7t
        0xct
        0x23t
        0x21t
        0x3ct
        0x27t
        0x36t
        0x30t
        0x27t
        0x36t
        0x37t
        0xct
        0x30t
        0x3ct
        0x3dt
        0x27t
        0x36t
        0x3dt
        0x27t
        0x4t
        0x6t
        0xdt
        0x1et
        0xat
        0x9t
        0x13t
        0x1et
        0x32t
        0x34t
        0x33t
        0x27t
        0x20t
        0x22t
        0x24t
        0x2dt
        0x24t
        0x32t
        0x32t
        0x1et
        0x22t
        0x2et
        0x2ft
        0x35t
        0x24t
        0x39t
        0x35t
        0x20t
        0x1bt
        0x6t
        0x0t
        0x5t
        0x5t
        0x1at
        0x7t
        0x1t
        0x10t
        0x11t
        0x55t
        0x5t
        0x7t
        0x1ct
        0x1at
        0x7t
        0x55t
        0x1t
        0x1at
        0x55t
        0x34t
        0x25t
        0x3ct
        0x55t
        0x19t
        0x10t
        0x3t
        0x10t
        0x19t
        0x55t
        0x44t
        0x42t
        0x65t
        0x69t
        0xct
        0xbt
        0x8t
        0xdt
        0x3ft
        0x30t
        0x3at
        0x2ct
        0x31t
        0x37t
        0x3at
        0x70t
        0x36t
        0x3ft
        0x2ct
        0x3at
        0x29t
        0x3ft
        0x2ct
        0x3bt
        0x70t
        0x28t
        0x2ct
        0x70t
        0x36t
        0x37t
        0x39t
        0x36t
        0x1t
        0x2et
        0x3bt
        0x2ct
        0x38t
        0x31t
        0x2ct
        0x33t
        0x3ft
        0x30t
        0x3dt
        0x3bt
        0xbt
        0x19t
        0x15t
        0xbt
        0xdt
        0x16t
        0x1ft
    .end array-data
.end method

.method public static declared-synchronized A05(Landroid/content/Context;)Z
    .locals 4

    const-class v3, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;

    monitor-enter v3

    .line 36084
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A04:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 36085
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A00(Landroid/content/Context;)I

    move-result v0

    :goto_0
    sput v0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A03:I

    .line 36086
    sput-boolean v2, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A04:Z

    .line 36087
    :cond_1
    sget v0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A03:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    return v2

    .line 36088
    .end local p1
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method


# virtual methods
.method public final release()V
    .locals 2

    .line 36089
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 36090
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A02:Lcom/facebook/ads/redexgen/X/Fi;

    monitor-enter v1

    .line 36091
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A00:Z

    if-nez v0, :cond_0

    .line 36092
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A02:Lcom/facebook/ads/redexgen/X/Fi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fi;->A05()V

    .line 36093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/androidx/media3/exoplayer/video/DummySurface;->A00:Z

    .line 36094
    :cond_0
    monitor-exit v1

    .line 36095
    return-void

    .line 36096
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
