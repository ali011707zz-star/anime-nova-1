.class public final Lcom/facebook/ads/redexgen/X/Ns;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Nr;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x2aL


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/String;

.field public final A08:Ljava/lang/String;

.field public final A09:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nr;)V
    .locals 1

    .line 54939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54940
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nr;->A01(Lcom/facebook/ads/redexgen/X/Nr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Ljava/lang/String;

    .line 54941
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nr;->A02(Lcom/facebook/ads/redexgen/X/Nr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A09:Ljava/lang/String;

    .line 54942
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nr;->A03(Lcom/facebook/ads/redexgen/X/Nr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A08:Ljava/lang/String;

    .line 54943
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nr;->A04(Lcom/facebook/ads/redexgen/X/Nr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A07:Ljava/lang/String;

    .line 54944
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nr;->A05(Lcom/facebook/ads/redexgen/X/Nr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A04:Ljava/lang/String;

    .line 54945
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nr;->A06(Lcom/facebook/ads/redexgen/X/Nr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A03:Ljava/lang/String;

    .line 54946
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nr;->A07(Lcom/facebook/ads/redexgen/X/Nr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Ljava/lang/String;

    .line 54947
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nr;->A00(Lcom/facebook/ads/redexgen/X/Nr;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:I

    .line 54948
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nr;->A08(Lcom/facebook/ads/redexgen/X/Nr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A02:Ljava/lang/String;

    .line 54949
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nr;->A09(Lcom/facebook/ads/redexgen/X/Nr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A01:Ljava/lang/String;

    .line 54950
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Nr;Lcom/facebook/ads/redexgen/X/Nq;)V
    .locals 0

    .line 54951
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ns;-><init>(Lcom/facebook/ads/redexgen/X/Nr;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 54952
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A00:I

    return v0
.end method

.method public final A01()Ljava/lang/String;
    .locals 1

    .line 54953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 54954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 54955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A03:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A03:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 54956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A04:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A04:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    .line 54957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A05:Ljava/lang/String;

    return-object v0
.end method

.method public final A06()Ljava/lang/String;
    .locals 1

    .line 54958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A06:Ljava/lang/String;

    return-object v0
.end method

.method public final A07()Ljava/lang/String;
    .locals 1

    .line 54959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A07:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A07:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final A08()Ljava/lang/String;
    .locals 1

    .line 54960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A08:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ns;->A08:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
