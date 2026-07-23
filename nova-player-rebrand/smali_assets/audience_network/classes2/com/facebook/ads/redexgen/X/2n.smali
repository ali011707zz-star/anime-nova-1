.class public final Lcom/facebook/ads/redexgen/X/2n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2m;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 142
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZtAeFZn0B1qTMkAv4TimNf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "onjqbWPlpraCurTtWuR0R"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "izLFZdnLPv7lUm1GFercP1dDHTQqqlbm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "06udDjCQiMTHlo"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ThrPk51efRSGKxf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UllMG4WENFsjBGTIREywCD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xUDuL0NOtKss50bSSzha3FmKwjhZHM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2ZQ9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2n;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 9585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9586
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Landroid/util/SparseBooleanArray;

    .line 9587
    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/2l;)V
    .locals 0

    .line 9588
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2n;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 9589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method public final A01(I)I
    .locals 2

    .line 9590
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2n;->A00()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A00(III)I

    .line 9591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 9592
    const/4 v7, 0x1

    if-ne p0, p1, :cond_0

    .line 9593
    return v7

    .line 9594
    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2n;

    const/4 v6, 0x0

    if-nez v0, :cond_1

    .line 9595
    return v6

    .line 9596
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/2n;

    .line 9597
    .local v1, "that":Lcom/facebook/ads/redexgen/X/2n;
    sget v3, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/2n;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/2n;->A01:[Ljava/lang/String;

    const-string v1, "V79UaeNQVFwVWh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "sTKtjiNlOf72YkaUZZtiJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x18

    if-ge v3, v0, :cond_8

    .line 9598
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2n;->A00()I

    move-result v4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2n;->A00()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2n;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_3

    if-eq v4, v3, :cond_4

    .line 9599
    :goto_0
    return v6

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/2n;->A01:[Ljava/lang/String;

    const-string v1, "gWINzXnVkNSV1XpcBprNZ7cfktAxvgY6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_4

    goto :goto_0

    .line 9600
    :cond_4
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2n;->A00()I

    move-result v0

    if-ge v5, v0, :cond_7

    .line 9601
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/2n;->A01(I)I

    move-result v4

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/2n;->A01(I)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2n;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/2n;->A01:[Ljava/lang/String;

    const-string v1, "0EnUC3S7s3BqIyD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "m0OD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_5

    .line 9602
    return v6

    .line 9603
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9604
    .end local v3    # "i":I
    :cond_7
    return v7

    .line 9605
    :cond_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Landroid/util/SparseBooleanArray;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2n;->A00:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 9606
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_2

    .line 9607
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2n;->A00()I

    move-result v3

    .line 9608
    .local v0, "hashCode":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2n;->A00()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 9609
    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/2n;->A01(I)I

    move-result v0

    add-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2n;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    .line 9610
    sget-object v2, Lcom/facebook/ads/redexgen/X/2n;->A01:[Ljava/lang/String;

    const-string v1, "oTlXYQnTcFkgjJigc1HTEJLN2hql86lz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9611
    .end local v1    # "i":I
    :cond_1
    return v3

    .line 9612
    .end local v0    # "hashCode":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2n;->A00:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method
