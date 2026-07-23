.class public final Lcom/facebook/ads/redexgen/X/iS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/iR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/video/framebasedlogging/FrameBasedLogger;",
        "",
        "videoId",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getVideoId",
        "()Ljava/lang/String;",
        "videoFrameBuffer",
        "Ljava/util/concurrent/BlockingDeque;",
        "Lcom/facebook/video/framebasedlogging/VideoFrameInfo;",
        "getVideoFrameBuffer$annotations",
        "()V",
        "addVideoFrameToBuffer",
        "",
        "frame",
        "videoFramesAndEmptyBuffer",
        "",
        "getVideoFramesAndEmptyBuffer",
        "()Ljava/util/List;",
        "Companion",
        "fbandroid.java.com.facebook.video.framebasedlogging.framebasedlogging_an"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/iR;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lcom/facebook/ads/redexgen/X/iT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2948
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nvoCYT5lXV50ozFrdUrQJCA6z0GvB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jdLKha1Na7nbzs0Nk4YLOHAcdwecuvvy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "x"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dSWVRlyTiHf7svvh2WPzEDVR9b7sv5FM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fWYFOffN0cZPNc3vcPN7ReiBLy1A48b"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "e5JjNsryHusTZGAVeTKu2QwvoQvLupoE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SBHDzKPIpiPnF71bMjezo2z0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/iS;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/iS;->A02()V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/iR;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/iR;-><init>(Lcom/facebook/ads/redexgen/X/qZ;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/iR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 86805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iS;->A00:Ljava/lang/String;

    .line 86806
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    check-cast v0, Ljava/util/concurrent/BlockingDeque;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A01:Ljava/util/concurrent/BlockingDeque;

    .line 86807
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iS;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x56

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final A01(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iT;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/ads/redexgen/X/iS;->A04:Lcom/facebook/ads/redexgen/X/iR;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/iR;->A0A(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 86808
    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iS;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1ft
        0xbt
        0x18t
        0x14t
        0x1ct
    .end array-data
.end method


# virtual methods
.method public final A03()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/iT;",
            ">;"
        }
    .end annotation

    .line 86809
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 86810
    .local v0, "frames":Ljava/util/List;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iS;->A01:Ljava/util/concurrent/BlockingDeque;

    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingDeque;->drainTo(Ljava/util/Collection;)I

    .line 86811
    return-object v2
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/iT;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A01:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/iT;

    .line 86813
    .local v0, "lastFrame":Lcom/facebook/ads/redexgen/X/iT;
    if-eqz v4, :cond_1

    .line 86814
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/iT;->A03()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/iT;->A03()J

    move-result-wide v0

    cmp-long v3, v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/iS;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A03:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 86815
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/iT;->A01()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/iT;->A01()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 86816
    return-void

    .line 86817
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iS;->A01:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/iS;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 86818
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/iS;->A03:[Ljava/lang/String;

    const-string v1, "kleFc3GTYdmSeGzzaJMmIvt997RVj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void
.end method
