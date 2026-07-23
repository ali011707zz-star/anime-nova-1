.class public final Lcom/facebook/ads/redexgen/X/4G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4E;,
        Lcom/facebook/ads/androidx/media3/common/util/EGLSurfaceTexture$SecureMode;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:[I


# instance fields
.field public A00:Landroid/graphics/SurfaceTexture;

.field public A01:Landroid/opengl/EGLContext;

.field public A02:Landroid/opengl/EGLDisplay;

.field public A03:Landroid/opengl/EGLSurface;

.field public final A04:Landroid/os/Handler;

.field public final A05:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 323
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LhLlUYOA3naT6ewiIfSatK6wPnwZfiw3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Yilysgn0AAb9YtLDTNJji2mPRB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "c9oRdUKVrFFtnTa1I"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xlNtsgcQCcIfApmgkmgvKWlCiiYZcHMk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hc66151z6q5iwEh2NbNUTWK4J8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zFcjHNMQlzxWDemIwLbPjRBcPW9AB4cx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Z4gs05w13PySoO170q3JfxFVkqHBiozt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4G;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4G;->A05()V

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4G;->A08:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 11285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11286
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Landroid/os/Handler;

    .line 11287
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:[I

    .line 11288
    return-void
.end method

.method public static A00(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 14

    .line 11289
    const/4 v5, 0x1

    new-array v9, v5, [Landroid/opengl/EGLConfig;

    .line 11290
    .local v9, "configs":[Landroid/opengl/EGLConfig;
    new-array v12, v5, [I

    .line 11291
    .local v10, "numConfigs":[I
    sget-object v7, Lcom/facebook/ads/redexgen/X/4G;->A08:[I

    .line 11292
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v13}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v1

    .line 11293
    .local v1, "success":Z
    const/4 v6, 0x0

    if-eqz v1, :cond_0

    aget v0, v12, v6

    if-lez v0, :cond_0

    aget-object v0, v9, v6

    if-eqz v0, :cond_0

    .line 11294
    aget-object v0, v9, v6

    return-object v0

    .line 11295
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aget v0, v12, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v1, v9, v6

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v4, v3, v6

    aput-object v2, v3, v5

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 11296
    const/4 v2, 0x0

    const/16 v1, 0x43

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/5C;->A0n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4E;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/4D;)V

    throw v0
.end method

.method public static A01(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 5

    .line 11297
    const/16 v4, 0x3038

    const/4 v3, 0x2

    const/16 v2, 0x3098

    if-nez p2, :cond_0

    .line 11298
    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    .line 11299
    .local v0, "glAttributes":[I
    .restart local v0    # "glAttributes":[I
    :goto_0
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 11300
    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    .line 11301
    .local v1, "context":Landroid/opengl/EGLContext;
    if-eqz v0, :cond_1

    .line 11302
    return-object v0

    .line 11303
    .end local v0    # "glAttributes":[I
    :cond_0
    const/16 v1, 0x32c0

    const/4 v0, 0x1

    filled-new-array {v2, v3, v1, v0, v4}, [I

    move-result-object v2

    goto :goto_0

    .line 11304
    :cond_1
    const/16 v2, 0x43

    const/16 v1, 0x17

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;->A04(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4E;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/4D;)V

    throw v0
.end method

.method public static A02()Landroid/opengl/EGLDisplay;
    .locals 5

    .line 11305
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    .line 11306
    .local v1, "display":Landroid/opengl/EGLDisplay;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 11307
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 11308
    .local v3, "version":[I
    const/4 v0, 0x1

    invoke-static {v2, v1, v4, v1, v0}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    .line 11309
    .local v0, "eglInitialized":Z
    if-eqz v0, :cond_0

    .line 11310
    return-object v2

    .line 11311
    :cond_0
    const/16 v2, 0x8c

    const/16 v1, 0x14

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/4E;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/4D;)V

    throw v0

    .line 11312
    .end local v0    # "eglInitialized":Z
    .end local v3    # "version":[I
    :cond_1
    const/16 v2, 0x78

    const/16 v1, 0x14

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/4E;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/4D;)V

    throw v0
.end method

.method public static A03(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;
    .locals 5

    .line 11313
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p3, v4, :cond_0

    .line 11314
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 11315
    .local v1, "surface":Landroid/opengl/EGLSurface;
    .end local v2
    .local v1, "surface":Landroid/opengl/EGLSurface;
    :goto_0
    invoke-static {p0, v0, v0, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    .line 11316
    .local v2, "eglMadeCurrent":Z
    if-eqz v1, :cond_2

    .line 11317
    return-object v0

    .line 11318
    .end local v1    # "surface":Landroid/opengl/EGLSurface;
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 11319
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 11320
    .local v1, "pbufferAttributes":[I
    .restart local v1    # "pbufferAttributes":[I
    :goto_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 11321
    .local v2, "surface":Landroid/opengl/EGLSurface;
    if-eqz v0, :cond_3

    goto :goto_0

    .line 11322
    .end local v1    # "pbufferAttributes":[I
    :cond_1
    const/16 v2, 0x3057

    const/16 v1, 0x3056

    const/16 v0, 0x3038

    filled-new-array {v2, v4, v1, v4, v0}, [I

    move-result-object v1

    goto :goto_1

    .line 11323
    :cond_2
    const/16 v2, 0xa0

    const/16 v1, 0x15

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/4E;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/4D;)V

    throw v0

    .line 11324
    .local v1, "pbufferAttributes":[I
    .local v2, "surface":Landroid/opengl/EGLSurface;
    :cond_3
    const/16 v2, 0x5a

    const/16 v1, 0x1e

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/4E;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/4D;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4G;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x74

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xd2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4G;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x48t
        0x4at
        0x4ft
        0x26t
        0x4bt
        0x52t
        0x52t
        0x56t
        0x48t
        0x26t
        0x52t
        0x51t
        0x49t
        0x4ct
        0x4at
        0x3t
        0x49t
        0x44t
        0x4ct
        0x4ft
        0x48t
        0x47t
        0x1dt
        0x3t
        0x56t
        0x58t
        0x46t
        0x46t
        0x48t
        0x56t
        0x56t
        0x20t
        0x8t
        0x45t
        0xft
        0x3t
        0x51t
        0x58t
        0x50t
        0x26t
        0x52t
        0x51t
        0x49t
        0x4ct
        0x4at
        0x56t
        0x3et
        0x13t
        0x40t
        0x20t
        0x8t
        0x47t
        0xft
        0x3t
        0x46t
        0x52t
        0x51t
        0x49t
        0x4ct
        0x4at
        0x56t
        0x3et
        0x13t
        0x40t
        0x20t
        0x8t
        0x56t
        -0x1bt
        -0x19t
        -0x14t
        -0x3dt
        -0xet
        -0x1bt
        -0x1ft
        -0xct
        -0x1bt
        -0x3dt
        -0x11t
        -0x12t
        -0xct
        -0x1bt
        -0x8t
        -0xct
        -0x60t
        -0x1at
        -0x1ft
        -0x17t
        -0x14t
        -0x1bt
        -0x1ct
        0x14t
        0x16t
        0x1bt
        -0xet
        0x21t
        0x14t
        0x10t
        0x23t
        0x14t
        -0x1t
        0x11t
        0x24t
        0x15t
        0x15t
        0x14t
        0x21t
        0x2t
        0x24t
        0x21t
        0x15t
        0x10t
        0x12t
        0x14t
        -0x31t
        0x15t
        0x10t
        0x18t
        0x1bt
        0x14t
        0x13t
        -0x6t
        -0x4t
        0x1t
        -0x24t
        -0x6t
        0x9t
        -0x27t
        -0x2t
        0x8t
        0x5t
        0x1t
        -0xat
        0xet
        -0x4bt
        -0x5t
        -0xat
        -0x2t
        0x1t
        -0x6t
        -0x7t
        0x43t
        0x45t
        0x4at
        0x27t
        0x4ct
        0x47t
        0x52t
        0x47t
        0x3ft
        0x4at
        0x47t
        0x58t
        0x43t
        -0x2t
        0x44t
        0x3ft
        0x47t
        0x4at
        0x43t
        0x42t
        0x2t
        0x4t
        0x9t
        -0x16t
        -0x2t
        0x8t
        0x2t
        -0x20t
        0x12t
        0xft
        0xft
        0x2t
        0xbt
        0x11t
        -0x43t
        0x3t
        -0x2t
        0x6t
        0x9t
        0x2t
        0x1t
        0xdt
        0x12t
        -0x13t
        0xbt
        0x14t
        -0x6t
        0xbt
        0x1et
        0x1at
        0x1bt
        0x18t
        0xbt
        0x19t
        -0x3at
        0xct
        0x7t
        0xft
        0x12t
        0xbt
        0xat
        -0x2ct
        -0x3at
        -0x15t
        0x18t
        0x18t
        0x15t
        0x18t
        -0x20t
        -0x3at
    .end array-data
.end method

.method public static A06([I)V
    .locals 4

    .line 11325
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 11326
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p0

    .line 11327
    .local v0, "errorCode":I
    if-nez p0, :cond_0

    .line 11328
    return-void

    .line 11329
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb5

    const/16 v1, 0x1d

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4G;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4E;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/4E;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/4D;)V

    throw v0
.end method


# virtual methods
.method public final A07()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 11330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final A08()V
    .locals 5

    .line 11331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11332
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 11333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 11334
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:[I

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11335
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11336
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Landroid/opengl/EGLSurface;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 11337
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:Landroid/opengl/EGLContext;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4G;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/4G;->A07:[Ljava/lang/String;

    const-string v1, "QNIttSd1jDkmqHhtWtb4AUHxJPK3ppH8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 11338
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:Landroid/opengl/EGLContext;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 11339
    :cond_4
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:Landroid/opengl/EGLDisplay;

    .line 11340
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:Landroid/opengl/EGLContext;

    .line 11341
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Landroid/opengl/EGLSurface;

    .line 11342
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:Landroid/graphics/SurfaceTexture;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4G;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_2

    .line 11343
    sget-object v2, Lcom/facebook/ads/redexgen/X/4G;->A07:[Ljava/lang/String;

    const-string v1, "tPWKOfvaIXpYJ8rWJX79LPHjnVzX8xxm"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    .line 11344
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 11345
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Landroid/opengl/EGLSurface;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 11346
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_6

    .line 11347
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:Landroid/opengl/EGLContext;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 11348
    :cond_6
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:Landroid/opengl/EGLDisplay;

    .line 11349
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:Landroid/opengl/EGLContext;

    .line 11350
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Landroid/opengl/EGLSurface;

    .line 11351
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:Landroid/graphics/SurfaceTexture;

    .line 11352
    throw v2
.end method

.method public final A09(I)V
    .locals 3

    .line 11353
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4G;->A02()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:Landroid/opengl/EGLDisplay;

    .line 11354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4G;->A00(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v2

    .line 11355
    .local v0, "config":Landroid/opengl/EGLConfig;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v2, p1}, Lcom/facebook/ads/redexgen/X/4G;->A01(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:Landroid/opengl/EGLContext;

    .line 11356
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A02:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A01:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v0, p1}, Lcom/facebook/ads/redexgen/X/4G;->A03(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A03:Landroid/opengl/EGLSurface;

    .line 11357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:[I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4G;->A06([I)V

    .line 11358
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4G;->A05:[I

    const/4 v0, 0x0

    aget v1, v1, v0

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:Landroid/graphics/SurfaceTexture;

    .line 11359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A00:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 11360
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 11361
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4G;->A04:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11362
    return-void
.end method

.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 11363
    .local v0, "this":Lcom/facebook/ads/redexgen/X/4G;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4G;->A00:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 11364
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4G;->A00:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 11365
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/4G;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
