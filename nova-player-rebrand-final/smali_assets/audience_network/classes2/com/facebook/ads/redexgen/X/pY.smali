.class public final Lcom/facebook/ads/redexgen/X/pY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/pZ;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;

.field public static final A02:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/pY;",
            ">;"
        }
    .end annotation
.end field

.field public static final A03:Lcom/facebook/ads/redexgen/X/pY;

.field public static final A04:Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Remove Immutable List for Oculus"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pZ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3377
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0eRTZm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wsJdmo7HTY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VHUY43wJh5fnSZ3wEvYR5lxV3yQqNNMU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kUjTCgoRRteoZ0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6rJamNQt6U89KJOuF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xAstRHAahUkfHwQSYEnj0qzfqp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GuXFY9846UfmIsqOXXuGkg4YoPfa8R1b"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/pY;->A01:[Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/pY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/pY;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pY;->A03:Lcom/facebook/ads/redexgen/X/pY;

    .line 3378
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pY;->A04:Ljava/lang/String;

    .line 3379
    new-instance v0, Lcom/facebook/ads/redexgen/X/pb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pb;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pY;->A02:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pZ;",
            ">;)V"
        }
    .end annotation

    .line 104338
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Tracks$Group;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104339
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/pZ;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/pZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jW;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pY;->A00:Ljava/util/List;

    .line 104340
    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pY;
    .locals 1

    .line 104341
    sget-object v0, Lcom/facebook/ads/redexgen/X/pY;->A04:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 104342
    .local v0, "groupBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez p0, :cond_0

    .line 104343
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 104344
    .local p0, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/Tracks$Group;>;"
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/pY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/pY;-><init>(Ljava/util/List;)V

    return-object v0

    .line 104345
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/pZ;->A05:Lcom/facebook/ads/redexgen/X/23;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/23;Ljava/util/List;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 104346
    if-ne p0, p1, :cond_0

    .line 104347
    const/4 v0, 0x1

    return v0

    .line 104348
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_3

    .line 104349
    .end local v0
    :cond_1
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/pY;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/pY;->A01:[Ljava/lang/String;

    const-string v1, "oFMxQz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4E"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 104350
    :cond_3
    check-cast p1, Lcom/facebook/ads/redexgen/X/pY;

    .line 104351
    .local v0, "that":Lcom/facebook/ads/redexgen/X/pY;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/pY;->A00:Ljava/util/List;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pY;->A00:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 104352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pY;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method
