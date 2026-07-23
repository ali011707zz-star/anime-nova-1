.class public final Lcom/facebook/ads/redexgen/X/4Q;
.super Lcom/facebook/ads/redexgen/X/EA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/eg;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 325
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6BCUDqBTxMKsyDySTDfAgToNrOyTrTD7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Djf66yrzqq1vnadUmdmWvJcbyzxtAl6k"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tEWjotQxZjNCyKq2vbPJS9KAzb4A3hxJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kfWCXMrmmpdmvn7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tPgONuxPqcgn4e0Z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "11TiM4f61A8Ladhbi7mmvNycAncH9GAZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vRuUugy6JKGdIehMZ73GXeup75bhp5n7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ksJD2q6S6mSNkSfcUAtwhZVbKKRTJPP1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4Q;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/eg;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11459
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4Q;->A00:Lcom/facebook/ads/redexgen/X/eg;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/EA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 4

    .line 11460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Q;->A00:Lcom/facebook/ads/redexgen/X/eg;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eg;->A05(Lcom/facebook/ads/redexgen/X/eg;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11461
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4Q;->A00:Lcom/facebook/ads/redexgen/X/eg;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4Q;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/4Q;->A01:[Ljava/lang/String;

    const-string v1, "Cld5vqCsdzETAPzY9HB959"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/eg;->A07()V

    .line 11462
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11463
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4Q;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
