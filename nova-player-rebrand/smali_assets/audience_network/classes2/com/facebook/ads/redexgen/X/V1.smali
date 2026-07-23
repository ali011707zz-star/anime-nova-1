.class public final Lcom/facebook/ads/redexgen/X/V1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Uy;,
        Lcom/facebook/ads/redexgen/X/Uz;,
        Lcom/facebook/ads/redexgen/X/V0;,
        Lcom/facebook/ads/redexgen/X/Ux;
    }
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ux;

.field public A01:Lcom/facebook/ads/redexgen/X/Uy;

.field public A02:Lcom/facebook/ads/redexgen/X/Uz;

.field public A03:Lcom/facebook/ads/redexgen/X/V0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1961
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VndfGBIDInq1AmGKWEXIYtH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "X1ufgR44W1Z84U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "za8Aa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xjBfTCMiG1bFh7NB9hwMlLVXQHNbTqdl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vkDSrNK7CnANJUjGZxXcCXY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "njWPP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V1;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68972
    sget-object v0, Lcom/facebook/ads/redexgen/X/Uy;->A03:Lcom/facebook/ads/redexgen/X/Uy;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A01:Lcom/facebook/ads/redexgen/X/Uy;

    .line 68973
    sget-object v0, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/Uz;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Uz;

    .line 68974
    sget-object v0, Lcom/facebook/ads/redexgen/X/V0;->A02:Lcom/facebook/ads/redexgen/X/V0;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Lcom/facebook/ads/redexgen/X/V0;

    .line 68975
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ux;->A02:Lcom/facebook/ads/redexgen/X/Ux;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    .line 68976
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 68977
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ux;->A03:Lcom/facebook/ads/redexgen/X/Ux;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    .line 68978
    return-void
.end method

.method public final A01()V
    .locals 1

    .line 68979
    sget-object v0, Lcom/facebook/ads/redexgen/X/Uz;->A04:Lcom/facebook/ads/redexgen/X/Uz;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Uz;

    .line 68980
    return-void
.end method

.method public final A02()V
    .locals 1

    .line 68981
    sget-object v0, Lcom/facebook/ads/redexgen/X/Uz;->A05:Lcom/facebook/ads/redexgen/X/Uz;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Uz;

    .line 68982
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 68983
    sget-object v0, Lcom/facebook/ads/redexgen/X/V0;->A03:Lcom/facebook/ads/redexgen/X/V0;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Lcom/facebook/ads/redexgen/X/V0;

    .line 68984
    return-void
.end method

.method public final A04()Z
    .locals 4

    .line 68985
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Uz;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/Uz;

    if-eq v1, v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Uz;

    sget-object v2, Lcom/facebook/ads/redexgen/X/V1;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/V1;->A04:[Ljava/lang/String;

    const-string v1, "r152EQyYeE04Ovy9QYMfnLx"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "I6yTYbMajK96Zgvn6mn7gLC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Uz;->A02:Lcom/facebook/ads/redexgen/X/Uz;

    if-eq v3, v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Uz;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Uz;->A05:Lcom/facebook/ads/redexgen/X/Uz;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A05()Z
    .locals 2

    .line 68986
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Uz;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Uz;->A06:Lcom/facebook/ads/redexgen/X/Uz;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A02:Lcom/facebook/ads/redexgen/X/Uz;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Uz;->A02:Lcom/facebook/ads/redexgen/X/Uz;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A06()Z
    .locals 2

    .line 68987
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A03:Lcom/facebook/ads/redexgen/X/V0;

    sget-object v0, Lcom/facebook/ads/redexgen/X/V0;->A03:Lcom/facebook/ads/redexgen/X/V0;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A07()Z
    .locals 2

    .line 68988
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V1;->A00:Lcom/facebook/ads/redexgen/X/Ux;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ux;->A03:Lcom/facebook/ads/redexgen/X/Ux;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
