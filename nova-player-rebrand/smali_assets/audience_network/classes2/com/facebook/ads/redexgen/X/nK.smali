.class public final Lcom/facebook/ads/redexgen/X/nK;
.super Lcom/facebook/ads/redexgen/X/3h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public A01:Z

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D25277746 - If all qualities are filtered out, do not use a fixed selection but differ to adaptive track selection in hero."
    .end annotation
.end field

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public final A0E:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/nW;",
            "Lcom/facebook/ads/redexgen/X/nH;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A0F:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3295
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "svIlLfjydeGBu6G0UjrHSopJ4Ky0wypW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Eix0ooWKKyHx1hOwK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jEg8xHvrvI0NXBTEehRxqQQjEYaTbIQI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2fo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JdZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dfBQZRQYRFpeihXeeCDcyjRnxunK4YCt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "go43CHW4mwtjJCZZxmpd9eXXAUtGDH29"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nK;->A0G:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100327
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3h;-><init>()V

    .line 100328
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0E:Landroid/util/SparseArray;

    .line 100329
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0F:Landroid/util/SparseBooleanArray;

    .line 100330
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nK;->A0W()V

    .line 100331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 100332
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3h;-><init>(Landroid/content/Context;)V

    .line 100333
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0E:Landroid/util/SparseArray;

    .line 100334
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0F:Landroid/util/SparseBooleanArray;

    .line 100335
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nK;->A0W()V

    .line 100336
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Modified to support setExceedRendererCapabilitiesIfAllFilteredOut"
    .end annotation

    .line 100337
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3h;-><init>(Landroid/os/Bundle;)V

    .line 100338
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nK;->A0W()V

    .line 100339
    sget-object v2, Lcom/facebook/ads/redexgen/X/9i;->A0J:Lcom/facebook/ads/redexgen/X/9i;

    .line 100340
    .local v0, "defaultValue":Lcom/facebook/ads/redexgen/X/9i;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0D()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A0C:Z

    .line 100341
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100342
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A17(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100343
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0F()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A06:Z

    .line 100344
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100345
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A11(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100346
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0G()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A07:Z

    .line 100347
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100348
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A12(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100349
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0H()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A05:Z

    .line 100350
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100351
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A10(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100352
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0I()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A09:Z

    .line 100353
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100354
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A14(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100355
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0J()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A02:Z

    .line 100356
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100357
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A0x(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100358
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0K()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A03:Z

    .line 100359
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100360
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A0y(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100361
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0L()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A00:Z

    .line 100362
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100363
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A0v(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100364
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A04()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A01:Z

    .line 100365
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100366
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A0w(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100367
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A05()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A08:Z

    .line 100368
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100369
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A13(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100370
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A06()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A0B:Z

    .line 100371
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100372
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A16(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100373
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A07()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A0D:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100374
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A18(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100375
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A08()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A04:Z

    .line 100376
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100377
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A0z(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100378
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A09()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/9i;->A0A:Z

    .line 100379
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100380
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A15(Z)Lcom/facebook/ads/redexgen/X/nK;

    .line 100381
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0E:Landroid/util/SparseArray;

    .line 100382
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nK;->A0X(Landroid/os/Bundle;)V

    .line 100383
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 100384
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nK;->A0R([I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0F:Landroid/util/SparseBooleanArray;

    .line 100385
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Eb;)V
    .locals 0

    .line 100386
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nK;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9i;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "To support exceedRendererCapabilitiesIfAllFilteredOut"
    .end annotation

    .line 100387
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3h;-><init>(Lcom/facebook/ads/redexgen/X/pc;)V

    .line 100388
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A0C:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0C:Z

    .line 100389
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A06:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A06:Z

    .line 100390
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A07:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A07:Z

    .line 100391
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A05:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A05:Z

    .line 100392
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A09:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A09:Z

    .line 100393
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A02:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A02:Z

    .line 100394
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A03:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A03:Z

    .line 100395
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A00:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A00:Z

    .line 100396
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A01:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A01:Z

    .line 100397
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A08:Z

    .line 100398
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A0B:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0B:Z

    .line 100399
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A0D:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0D:Z

    .line 100400
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A04:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A04:Z

    .line 100401
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9i;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0A:Z

    .line 100402
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9i;->A00(Lcom/facebook/ads/redexgen/X/9i;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nK;->A0G(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0E:Landroid/util/SparseArray;

    .line 100403
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9i;->A01(Lcom/facebook/ads/redexgen/X/9i;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0F:Landroid/util/SparseBooleanArray;

    .line 100404
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9i;Lcom/facebook/ads/redexgen/X/Eb;)V
    .locals 0

    .line 100405
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nK;-><init>(Lcom/facebook/ads/redexgen/X/9i;)V

    return-void
.end method

.method public static A0G(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/nW;",
            "Lcom/facebook/ads/redexgen/X/nH;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/nW;",
            "Lcom/facebook/ads/redexgen/X/nH;",
            ">;>;"
        }
    .end annotation

    .line 100406
    .local p0, "selectionOverrides":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Lcom/facebook/ads/androidx/media3/exoplayer/source/TrackGroupArray;Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;>;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 100407
    .local v0, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Lcom/facebook/ads/androidx/media3/exoplayer/source/TrackGroupArray;Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;>;>;"
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 100408
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100409
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100410
    .end local v1    # "i":I
    :cond_0
    return-object v4
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/nK;)Landroid/util/SparseArray;
    .locals 0

    .line 100411
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0E:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/nK;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 100412
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0F:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private A0R([I)Landroid/util/SparseBooleanArray;
    .locals 5

    .line 100413
    if-nez p1, :cond_0

    .line 100414
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    return-object v0

    .line 100415
    :cond_0
    array-length v0, p1

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 100416
    .local v0, "sparseBooleanArray":Landroid/util/SparseBooleanArray;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 100417
    .local v3, "trueKey":I
    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 100418
    .end local v3    # "trueKey":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100419
    :cond_1
    return-object v4
.end method

.method private A0W()V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "To support setting exceedRendererCapabilitiesIfAllFilteredOut"
    .end annotation

    .line 100420
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nK;->A0C:Z

    .line 100421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A06:Z

    .line 100422
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nK;->A07:Z

    .line 100423
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A05:Z

    .line 100424
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nK;->A09:Z

    .line 100425
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A02:Z

    .line 100426
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A03:Z

    .line 100427
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A00:Z

    .line 100428
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A01:Z

    .line 100429
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nK;->A08:Z

    .line 100430
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nK;->A0B:Z

    .line 100431
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0D:Z

    .line 100432
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nK;->A04:Z

    .line 100433
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0A:Z

    .line 100434
    return-void
.end method

.method private A0X(Landroid/os/Bundle;)V
    .locals 7

    .line 100435
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 100436
    .local v0, "rendererIndices":[I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 100437
    .local v1, "trackGroupArrayBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-nez v5, :cond_2

    .line 100438
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A03()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v6

    .line 100439
    .local v2, "trackGroupArrays":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/source/TrackGroupArray;>;"
    :goto_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9i;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 100440
    .local v3, "selectionOverrideBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-nez v1, :cond_1

    .line 100441
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 100442
    .local v4, "selectionOverrides":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;>;"
    :goto_1
    if-eqz v4, :cond_0

    array-length v1, v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 100443
    :cond_0
    return-void

    .line 100444
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/nH;->A05:Lcom/facebook/ads/redexgen/X/23;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A00(Lcom/facebook/ads/redexgen/X/23;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v5

    goto :goto_1

    .line 100445
    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/nW;->A05:Lcom/facebook/ads/redexgen/X/23;

    sget-object v2, Lcom/facebook/ads/redexgen/X/nK;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/nK;->A0G:[Ljava/lang/String;

    const-string v1, "KlsLVpZXOsku5rL5eePguYtdE3UqynPn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "qpearOu2I9fJNwBbehSRgczBWJlsPwpY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/23;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v6

    goto :goto_0

    .line 100446
    :cond_3
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_2
    array-length v0, v4

    if-ge v3, v0, :cond_4

    .line 100447
    aget v2, v4, v3

    .line 100448
    .local v6, "rendererIndex":I
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/nW;

    .line 100449
    .local p0, "groups":Lcom/facebook/ads/redexgen/X/nW;
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/nH;

    .line 100450
    .local p1, "selectionOverride":Lcom/facebook/ads/redexgen/X/nH;
    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nK;->A0r(ILcom/facebook/ads/redexgen/X/nW;Lcom/facebook/ads/redexgen/X/nH;)Lcom/facebook/ads/redexgen/X/nK;

    .line 100451
    .end local v6    # "rendererIndex":I
    .end local p0    # "groups":Lcom/facebook/ads/redexgen/X/nW;
    .end local p1    # "selectionOverride":Lcom/facebook/ads/redexgen/X/nH;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 100452
    .end local v5    # "i":I
    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100453
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0C:Z

    return p0
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100454
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A06:Z

    return p0
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100455
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A07:Z

    return p0
.end method

.method public static synthetic A0b(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100456
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A05:Z

    return p0
.end method

.method public static synthetic A0c(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100457
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A09:Z

    return p0
.end method

.method public static synthetic A0d(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100458
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A02:Z

    return p0
.end method

.method public static synthetic A0e(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100459
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A03:Z

    return p0
.end method

.method public static synthetic A0f(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100460
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A00:Z

    return p0
.end method

.method public static synthetic A0g(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100461
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A01:Z

    return p0
.end method

.method public static synthetic A0h(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100462
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A08:Z

    return p0
.end method

.method public static synthetic A0i(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100463
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0B:Z

    return p0
.end method

.method public static synthetic A0j(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100464
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0D:Z

    return p0
.end method

.method public static synthetic A0k(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100465
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A04:Z

    return p0
.end method

.method public static synthetic A0l(Lcom/facebook/ads/redexgen/X/nK;)Z
    .locals 0

    .line 100466
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0A:Z

    return p0
.end method


# virtual methods
.method public final bridge synthetic A0m(IIZ)Lcom/facebook/ads/redexgen/X/3h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 100467
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/nK;->A0q(IIZ)Lcom/facebook/ads/redexgen/X/nK;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0n(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/3h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 100468
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/nK;->A0s(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/nK;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0o(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/3h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 100469
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/nK;->A0t(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/nK;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0p()Lcom/facebook/ads/redexgen/X/pc;
    .locals 1

    .line 100470
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/nK;->A19()Lcom/facebook/ads/redexgen/X/9i;

    move-result-object v0

    return-object v0
.end method

.method public final A0q(IIZ)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100471
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3h;->A0m(IIZ)Lcom/facebook/ads/redexgen/X/3h;

    .line 100472
    return-object p0
.end method

.method public final A0r(ILcom/facebook/ads/redexgen/X/nW;Lcom/facebook/ads/redexgen/X/nH;)Lcom/facebook/ads/redexgen/X/nK;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0E:Landroid/util/SparseArray;

    .line 100474
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 100475
    .local v0, "overrides":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/androidx/media3/exoplayer/source/TrackGroupArray;Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;>;"
    if-nez v3, :cond_0

    .line 100476
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 100477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nK;->A0E:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100478
    :cond_0
    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/nK;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/nK;->A0G:[Ljava/lang/String;

    const-string v1, "Tjk1w46Zsfr3yClteaW3dwU9W0N7TL6X"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "KoERYkShSHV4ud9Re9JlKSMcCXAYN5Cn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/nK;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/nK;->A0G:[Ljava/lang/String;

    const-string v1, "d9Fp2lxah88hbF8VY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "He"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v4, p3}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100479
    :goto_0
    return-object p0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/nK;->A0G:[Ljava/lang/String;

    const-string v1, "6G3DmRjovsWEEopHgL7H9VeUKDmRIoIA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "heYp32NvS9S7pouisOnfj6NnH9zTXJMv"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v4, p3}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 100480
    :cond_3
    invoke-interface {v3, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100481
    return-object p0
.end method

.method public final A0s(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100482
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A0n(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/3h;

    .line 100483
    return-object p0
.end method

.method public final A0t(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100484
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/3h;->A0o(Landroid/content/Context;Z)Lcom/facebook/ads/redexgen/X/3h;

    .line 100485
    return-object p0
.end method

.method public final A0u(Lcom/facebook/ads/redexgen/X/pc;)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100486
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3h;->A0W(Lcom/facebook/ads/redexgen/X/pc;)Lcom/facebook/ads/redexgen/X/3h;

    .line 100487
    return-object p0
.end method

.method public final A0v(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100488
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A00:Z

    .line 100489
    return-object p0
.end method

.method public final A0w(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100490
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A01:Z

    .line 100491
    return-object p0
.end method

.method public final A0x(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100492
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A02:Z

    .line 100493
    return-object p0
.end method

.method public final A0y(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100494
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A03:Z

    .line 100495
    return-object p0
.end method

.method public final A0z(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100496
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A04:Z

    .line 100497
    return-object p0
.end method

.method public final A10(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100498
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A05:Z

    .line 100499
    return-object p0
.end method

.method public final A11(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100500
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A06:Z

    .line 100501
    return-object p0
.end method

.method public final A12(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100502
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A07:Z

    .line 100503
    return-object p0
.end method

.method public final A13(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100504
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A08:Z

    .line 100505
    return-object p0
.end method

.method public final A14(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100506
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A09:Z

    .line 100507
    return-object p0
.end method

.method public final A15(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D25277746"
    .end annotation

    .line 100508
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A0A:Z

    .line 100509
    return-object p0
.end method

.method public final A16(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100510
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A0B:Z

    .line 100511
    return-object p0
.end method

.method public final A17(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100512
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A0C:Z

    .line 100513
    return-object p0
.end method

.method public final A18(Z)Lcom/facebook/ads/redexgen/X/nK;
    .locals 0

    .line 100514
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/nK;->A0D:Z

    .line 100515
    return-object p0
.end method

.method public final A19()Lcom/facebook/ads/redexgen/X/9i;
    .locals 2

    .line 100516
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9i;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/9i;-><init>(Lcom/facebook/ads/redexgen/X/nK;Lcom/facebook/ads/redexgen/X/Eb;)V

    return-object v0
.end method
