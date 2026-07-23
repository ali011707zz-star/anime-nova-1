.class public final Lcom/facebook/ads/redexgen/X/UG;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/UG;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1919
    new-instance v0, Lcom/facebook/ads/redexgen/X/UG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/UG;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/UG;->A00:Lcom/facebook/ads/redexgen/X/UG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/UG;
    .locals 1

    .line 66769
    sget-object v0, Lcom/facebook/ads/redexgen/X/UG;->A00:Lcom/facebook/ads/redexgen/X/UG;

    return-object v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/T8;Z)Lcom/facebook/ads/redexgen/X/ZJ;
    .locals 2

    .line 66770
    new-instance v1, Lcom/facebook/ads/redexgen/X/Sn;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Sn;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/ZJ;-><init>(Lcom/facebook/ads/redexgen/X/T8;ZLcom/facebook/ads/redexgen/X/Sn;)V

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/T8;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/T8;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66771
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/UG;->A01(Lcom/facebook/ads/redexgen/X/T8;Z)Lcom/facebook/ads/redexgen/X/ZJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZJ;->A06()Ljava/util/Map;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66772
    :catchall_0
    move-exception v1

    .line 66773
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A4I(Ljava/lang/Throwable;)V

    .line 66774
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U8;->A01(Lcom/facebook/ads/redexgen/X/T8;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
