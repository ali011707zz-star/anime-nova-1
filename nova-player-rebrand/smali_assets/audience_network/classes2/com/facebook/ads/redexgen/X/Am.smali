.class public final Lcom/facebook/ads/redexgen/X/Am;
.super Lcom/facebook/ads/redexgen/X/iL;
.source ""


# annotations
.annotation runtime Lcom/facebook/kotlin/compilerplugins/dataclassgenerate/annotation/DataClassGenerate;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/instagram/common/viewpoint/core/ViewpointQeConfig;",
        "",
        "enableMultipleUsersPerManager",
        "",
        "enableParentViewpointVisibilityPct",
        "<init>",
        "(ZZ)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "fbandroid.java.com.instagram.common.viewpoint.core.core_an"
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
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Z

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 641
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EEiZ5gwMJpudC46gmytKirA8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NSKRdvtre4PRehKVMd3Q45JlYfRDrG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CoRjB0oCb37S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DbfERFTzLjajwVv8sNh5sUlUy2oFrKFb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LqelwWv8kaDt3gFeGdVSs3BI163sHhDb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "u6CiNkzcWrumUo8SG6zNnx5HeV2X6NdJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1uy0riBBBCBFhXZsG4W77pBgNTmxUCRF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5rdIAllOhqLEYXGfwPJ9dysQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Am;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Am;-><init>(ZZILcom/facebook/ads/redexgen/X/qZ;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 29380
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iL;-><init>()V

    .line 29381
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:Z

    .line 29382
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:Z

    .line 29383
    return-void
.end method

.method public synthetic constructor <init>(ZZILcom/facebook/ads/redexgen/X/qZ;)V
    .locals 1

    .line 29384
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 29385
    const/4 p1, 0x0

    .line 29386
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 29387
    const/4 p2, 0x0

    .line 29388
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Am;-><init>(ZZ)V

    .line 29389
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Am;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    return v4

    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/Am;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Am;->A00:Z

    if-eq v1, v0, :cond_2

    return v4

    :cond_2
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Am;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Am;->A02:[Ljava/lang/String;

    const-string v1, "cwZ0ks8a4InKRgWpKf4KlC3uRBKypiM0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Am;->A01:Z

    if-eq v3, v0, :cond_3

    return v4

    :cond_3
    return v5

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A00:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iW;->A00(Z)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Am;->A01:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iW;->A00(Z)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
