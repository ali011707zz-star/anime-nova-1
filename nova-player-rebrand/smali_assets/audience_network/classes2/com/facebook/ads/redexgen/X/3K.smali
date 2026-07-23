.class public Lcom/facebook/ads/redexgen/X/3K;
.super Ljava/io/IOException;
.source ""


# instance fields
.field public A00:I

.field public A01:Z


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10456
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 10457
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10458
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 10459
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V
    .locals 0

    .line 10460
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10461
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/3K;->A01:Z

    .line 10462
    iput p4, p0, Lcom/facebook/ads/redexgen/X/3K;->A00:I

    .line 10463
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/3K;
    .locals 4

    .line 10464
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/3K;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/3K;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;
    .locals 2

    .line 10465
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/3K;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/facebook/ads/redexgen/X/3K;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static A02(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;
    .locals 3

    .line 10466
    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/3K;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/3K;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method
