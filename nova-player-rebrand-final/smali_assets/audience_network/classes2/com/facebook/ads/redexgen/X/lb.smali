.class public final Lcom/facebook/ads/redexgen/X/lb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jj;


# static fields
.field public static A01:[Ljava/lang/String;

.field public static final A02:Lcom/facebook/ads/redexgen/X/lb;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3198
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5dk9XJP2wGzKf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "t9Sqq8YLjeTrFPP9jF9lF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZSSLQReFK2RnB4Tl20"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6LiPtiUXCvNXZPkDmbiLO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ML1syn76y5DaiFADQPhnbgz9k8Qidn9e"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l6QdmjZcy6MGH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GeXYkzAGCbUHzEIcx9bq6WN7r3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lb;->A01:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/lb;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lb;->A02:Lcom/facebook/ads/redexgen/X/lb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94822
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lb;->A00:Ljava/util/List;

    .line 94823
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pT;)V
    .locals 1

    .line 94824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94825
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lb;->A00:Ljava/util/List;

    .line 94826
    return-void
.end method


# virtual methods
.method public final A7X(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/pT;",
            ">;"
        }
    .end annotation

    .line 94827
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lb;->A00:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final A83(I)J
    .locals 3

    .line 94828
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/lb;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 94829
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/lb;->A01:[Ljava/lang/String;

    const-string v1, "BSEyCnkUJKVAglTMpAGc69o360"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final A84()I
    .locals 1

    .line 94830
    const/4 v0, 0x1

    return v0
.end method

.method public final A8a(J)I
    .locals 3

    .line 94831
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
