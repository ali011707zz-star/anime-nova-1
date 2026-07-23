.class public final Lcom/facebook/ads/redexgen/X/6L;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/DecoderReuseEvaluation$DecoderDiscardReasons;,
        Lcom/facebook/ads/androidx/media3/exoplayer/DecoderReuseEvaluation$DecoderReuseResult;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/qI;

.field public final A03:Lcom/facebook/ads/redexgen/X/qI;

.field public final A04:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 431
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kbrCq6pMhmUkuvpwyFR35DcipjG4S8CW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oaW9l9tdb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0TRcVMdqb51VWoFscAzJe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "b9KyZslhVmWVmt6Bq2rIk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ASY6aJ5KLIO5E4dZs7qVgEBqztuPzXSE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9Pc37QLTRQIuoUm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qelQYpgVCE3t9Ri2JAAORJatu68jVLQj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6L;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qI;II)V
    .locals 1

    .line 16649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16650
    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 16651
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A05(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A04:Ljava/lang/String;

    .line 16652
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A03:Lcom/facebook/ads/redexgen/X/qI;

    .line 16653
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/qI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 16654
    iput p4, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:I

    .line 16655
    iput p5, p0, Lcom/facebook/ads/redexgen/X/6L;->A00:I

    .line 16656
    return-void

    .line 16657
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 16658
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 16659
    return v4

    .line 16660
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 16661
    .end local v2
    :cond_1
    return v2

    .line 16662
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/6L;

    .line 16663
    .local v2, "other":Lcom/facebook/ads/redexgen/X/6L;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/6L;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/6L;->A00:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6L;->A04:Ljava/lang/String;

    .line 16664
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A03:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6L;->A03:Lcom/facebook/ads/redexgen/X/qI;

    .line 16665
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/qI;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6L;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/6L;->A05:[Ljava/lang/String;

    const-string v1, "94n8VTHvI2C2zF2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6L;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 16666
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/qI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16667
    :goto_0
    return v4

    .line 16668
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 16669
    const/16 v0, 0x11

    .line 16670
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:I

    add-int/2addr v1, v0

    .line 16671
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A00:I

    add-int/2addr v1, v0

    .line 16672
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A04:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 16673
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A03:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qI;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 16674
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A02:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qI;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 16675
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    return v1
.end method
