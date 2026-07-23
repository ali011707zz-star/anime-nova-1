.class public final Lcom/facebook/ads/redexgen/X/qQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1z;,
        Lcom/facebook/ads/redexgen/X/20;,
        Lcom/facebook/ads/redexgen/X/1y;,
        Lcom/facebook/ads/redexgen/X/1x;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final A07:Lcom/facebook/ads/redexgen/X/qQ;

.field public static final A08:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/qQ;",
            ">;"
        }
    .end annotation
.end field

.field public static final A09:Ljava/lang/String;

.field public static final A0A:Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1z;

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3522
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SFReXFLlI4UOpNrTR2oqZFPGLDG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ddXxuwKTXrUgQKU5ch6dGlXzKHCNOB4g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ka5UQw68nW6F3F15EfeRiHjBxEcftjYi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TyFhGc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kpbiwOTtMuCD4LdTginQH36Spnec"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0F8UT5ylucYBCPc3EM7PRaW9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xfENz4MNKGXPVezlH9FH4FhAxccJ4akv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0RZwBffOFnQLfCTDTyZnu0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/qQ;->A06:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/20;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/20;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A05()Lcom/facebook/ads/redexgen/X/qQ;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A07:Lcom/facebook/ads/redexgen/X/qQ;

    .line 3523
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0A:Ljava/lang/String;

    .line 3524
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0B:Ljava/lang/String;

    .line 3525
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0D:Ljava/lang/String;

    .line 3526
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A09:Ljava/lang/String;

    .line 3527
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0C:Ljava/lang/String;

    .line 3528
    new-instance v0, Lcom/facebook/ads/redexgen/X/qR;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/qR;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A08:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 105600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105601
    iput p1, p0, Lcom/facebook/ads/redexgen/X/qQ;->A02:I

    .line 105602
    iput p2, p0, Lcom/facebook/ads/redexgen/X/qQ;->A03:I

    .line 105603
    iput p3, p0, Lcom/facebook/ads/redexgen/X/qQ;->A05:I

    .line 105604
    iput p4, p0, Lcom/facebook/ads/redexgen/X/qQ;->A01:I

    .line 105605
    iput p5, p0, Lcom/facebook/ads/redexgen/X/qQ;->A04:I

    .line 105606
    return-void
.end method

.method public synthetic constructor <init>(IIIIILcom/facebook/ads/redexgen/X/1w;)V
    .locals 0

    .line 105607
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/qQ;-><init>(IIIII)V

    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/qQ;
    .locals 5

    .line 105608
    new-instance v3, Lcom/facebook/ads/redexgen/X/20;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/20;-><init>()V

    .line 105609
    .local v0, "builder":Lcom/facebook/ads/redexgen/X/20;
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105610
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/20;->A01(I)Lcom/facebook/ads/redexgen/X/20;

    .line 105611
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105612
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0B:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/20;->A02(I)Lcom/facebook/ads/redexgen/X/20;

    .line 105613
    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/qQ;->A0D:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/qQ;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/qQ;->A06:[Ljava/lang/String;

    const-string v1, "GWwDRzmwjjhTaGez4rqlH73J"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "f0ceflDKapN9i1ydncZgjkps1oFM"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105614
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0D:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/20;->A04(I)Lcom/facebook/ads/redexgen/X/20;

    .line 105615
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A09:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105616
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A09:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/20;->A00(I)Lcom/facebook/ads/redexgen/X/20;

    .line 105617
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105618
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A0C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/20;->A03(I)Lcom/facebook/ads/redexgen/X/20;

    .line 105619
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/20;->A05()Lcom/facebook/ads/redexgen/X/qQ;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/1z;
    .locals 2

    .line 105620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qQ;->A00:Lcom/facebook/ads/redexgen/X/1z;

    if-nez v0, :cond_0

    .line 105621
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/1z;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/1z;-><init>(Lcom/facebook/ads/redexgen/X/qQ;Lcom/facebook/ads/redexgen/X/1w;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/qQ;->A00:Lcom/facebook/ads/redexgen/X/1z;

    .line 105622
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qQ;->A00:Lcom/facebook/ads/redexgen/X/1z;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 105623
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 105624
    return v3

    .line 105625
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 105626
    .end local v2
    :cond_1
    return v2

    .line 105627
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/qQ;

    .line 105628
    .local v2, "other":Lcom/facebook/ads/redexgen/X/qQ;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/qQ;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A02:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/qQ;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A03:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/qQ;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A05:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/qQ;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/qQ;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qQ;->A04:I

    if-ne v1, v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 105629
    const/16 v0, 0x11

    .line 105630
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/qQ;->A02:I

    add-int/2addr v1, v0

    .line 105631
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/qQ;->A03:I

    add-int/2addr v1, v0

    .line 105632
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/qQ;->A05:I

    add-int/2addr v1, v0

    .line 105633
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/qQ;->A01:I

    add-int/2addr v1, v0

    .line 105634
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/qQ;->A04:I

    add-int/2addr v1, v0

    .line 105635
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
