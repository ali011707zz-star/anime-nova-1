.class public final Lcom/facebook/ads/redexgen/X/Nm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Nl;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x4e149b77709aff0L


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nl;)V
    .locals 1

    .line 54696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54697
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nl;->A00(Lcom/facebook/ads/redexgen/X/Nl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A02:Ljava/lang/String;

    .line 54698
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nl;->A01(Lcom/facebook/ads/redexgen/X/Nl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A01:Ljava/lang/String;

    .line 54699
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nl;->A02(Lcom/facebook/ads/redexgen/X/Nl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A00:Ljava/lang/String;

    .line 54700
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Nl;->A03(Lcom/facebook/ads/redexgen/X/Nl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A03:Ljava/lang/String;

    .line 54701
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Nl;Lcom/facebook/ads/redexgen/X/Nk;)V
    .locals 0

    .line 54702
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Nm;-><init>(Lcom/facebook/ads/redexgen/X/Nl;)V

    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/String;
    .locals 1

    .line 54703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A01()Ljava/lang/String;
    .locals 1

    .line 54704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 54705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 54706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A03:Ljava/lang/String;

    return-object v0
.end method
