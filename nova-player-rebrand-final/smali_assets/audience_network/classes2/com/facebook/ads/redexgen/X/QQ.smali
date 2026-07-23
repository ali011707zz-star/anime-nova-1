.class public final Lcom/facebook/ads/redexgen/X/QQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QP;,
        Lcom/facebook/ads/redexgen/X/QO;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/QO;

.field public final A01:Lcom/facebook/ads/redexgen/X/QP;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1594
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "90ZggfNQsOg49XfX2Gw1SU3vAhU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6e03JoSoFcAuCj0XHJ07P"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X2n0FB8CLVE6QonP7j41AEQOs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oGNNWvZthHEo2sMGR9jx6vYqjxoachM9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "D9nn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xFc2wx6BEzvoHtEzkiYe1GtwM37"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KcMIoFUA4KOHORJmTS9CHMjc27bv2njt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Hz1lzGXaGkVdCftBSZ2HywJOuLsdaxmO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QQ;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QQ;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QP;)V
    .locals 1

    .line 60045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60046
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    .line 60047
    new-instance v0, Lcom/facebook/ads/redexgen/X/QO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/QO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    .line 60048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    .line 60049
    return-void
.end method

.method private A00(I)I
    .locals 4

    .line 60050
    const/4 v3, -0x1

    if-gez p1, :cond_0

    .line 60051
    return v3

    .line 60052
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QP;->A7I()I

    move-result v2

    .line 60053
    .local v1, "limit":I
    move v1, p1

    .line 60054
    .local v2, "offset":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 60055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A03(I)I

    move-result v0

    .line 60056
    .local v3, "removedBefore":I
    sub-int v0, v1, v0

    sub-int v0, p1, v0

    .line 60057
    .local p0, "diff":I
    if-nez v0, :cond_1

    .line 60058
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60059
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60060
    :cond_1
    add-int/2addr v1, v0

    .line 60061
    .end local v3    # "removedBefore":I
    .end local p0    # "diff":I
    goto :goto_0

    .line 60062
    :cond_2
    return v1

    .line 60063
    :cond_3
    return v3
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/QQ;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QQ;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x71t
        -0x7dt
        -0x35t
        -0x34t
        -0x39t
        -0x39t
        -0x38t
        -0x2ft
        -0x7dt
        -0x31t
        -0x34t
        -0x2at
        -0x29t
        -0x63t
        -0x15t
        -0x17t
        -0x10t
        -0x20t
        -0x1bt
        -0x22t
        -0x69t
        -0x15t
        -0x1at
        -0x69t
        -0x14t
        -0x1bt
        -0x21t
        -0x20t
        -0x25t
        -0x24t
        -0x69t
        -0x28t
        -0x69t
        -0x13t
        -0x20t
        -0x24t
        -0x12t
        -0x69t
        -0x15t
        -0x21t
        -0x28t
        -0x15t
        -0x69t
        -0x12t
        -0x28t
        -0x16t
        -0x69t
        -0x1bt
        -0x1at
        -0x15t
        -0x69t
        -0x21t
        -0x20t
        -0x25t
        -0x25t
        -0x24t
        -0x1bt
        0x2bt
        0x1et
        0x1at
        0x2ct
        -0x2bt
        0x1et
        0x28t
        -0x2bt
        0x23t
        0x24t
        0x29t
        -0x2bt
        0x16t
        -0x2bt
        0x18t
        0x1dt
        0x1et
        0x21t
        0x19t
        -0x1ft
        -0x2bt
        0x18t
        0x16t
        0x23t
        0x23t
        0x24t
        0x29t
        -0x2bt
        0x1dt
        0x1et
        0x19t
        0x1at
        -0x2bt
    .end array-data
.end method

.method private A03(Landroid/view/View;)V
    .locals 1

    .line 60064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;->ADo(Landroid/view/View;)V

    .line 60066
    return-void
.end method

.method private A04(Landroid/view/View;)Z
    .locals 1

    .line 60067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;->AEa(Landroid/view/View;)V

    .line 60069
    const/4 v0, 0x1

    return v0

    .line 60070
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A05()I
    .locals 2

    .line 60071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QP;->A7I()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A06()I
    .locals 1

    .line 60072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QP;->A7I()I

    move-result v0

    return v0
.end method

.method public final A07(Landroid/view/View;)I
    .locals 3

    .line 60073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;->AA7(Landroid/view/View;)I

    move-result v2

    .line 60074
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 60075
    return v1

    .line 60076
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/QO;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60077
    return v1

    .line 60078
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/QO;->A03(I)I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method public final A08(I)Landroid/view/View;
    .locals 5

    .line 60079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 60080
    .local v0, "count":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 60081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 60082
    .local v2, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QP;->A7L(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v1

    .line 60083
    .local v3, "holder":Lcom/facebook/ads/redexgen/X/RK;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0O()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 60084
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60085
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RK;->A0g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60086
    return-object v2

    .line 60087
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60088
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A09(I)Landroid/view/View;
    .locals 2

    .line 60089
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A00(I)I

    move-result v1

    .line 60090
    .local v0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/QP;->A7H(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(I)Landroid/view/View;
    .locals 1

    .line 60091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;->A7H(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0B()V
    .locals 3

    .line 60092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A04()V

    .line 60093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 60094
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/QP;->AEa(Landroid/view/View;)V

    .line 60095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60096
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 60097
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QP;->AIQ()V

    .line 60098
    return-void
.end method

.method public final A0C(I)V
    .locals 2

    .line 60099
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A00(I)I

    move-result v1

    .line 60100
    .local v0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A09(I)Z

    .line 60101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/QP;->A5w(I)V

    .line 60102
    return-void
.end method

.method public final A0D(I)V
    .locals 3

    .line 60103
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A00(I)I

    move-result v2

    .line 60104
    .local v0, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QP;->A7H(I)Landroid/view/View;

    move-result-object v1

    .line 60105
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 60106
    return-void

    .line 60107
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/QO;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60108
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/QQ;->A04(Landroid/view/View;)Z

    .line 60109
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QP;->AIW(I)V

    .line 60110
    return-void
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 4

    .line 60111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;->AA7(Landroid/view/View;)I

    move-result v1

    .line 60112
    .local v0, "offset":I
    if-ltz v1, :cond_0

    .line 60113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A06(I)V

    .line 60114
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A03(Landroid/view/View;)V

    .line 60115
    return-void

    .line 60116
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Landroid/view/View;)V
    .locals 2

    .line 60117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;->AA7(Landroid/view/View;)I

    move-result v1

    .line 60118
    .local v0, "index":I
    if-gez v1, :cond_0

    .line 60119
    return-void

    .line 60120
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60121
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A04(Landroid/view/View;)Z

    .line 60122
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/QP;->AIW(I)V

    .line 60123
    return-void
.end method

.method public final A0G(Landroid/view/View;)V
    .locals 4

    .line 60124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;->AA7(Landroid/view/View;)I

    move-result v1

    .line 60125
    .local v0, "offset":I
    if-ltz v1, :cond_2

    .line 60126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QO;->A05(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/QQ;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    .line 60128
    sget-object v2, Lcom/facebook/ads/redexgen/X/QQ;->A04:[Ljava/lang/String;

    const-string v1, "8IGbKDWrlSqGtsrcKzoZxkVKvdJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "U0TRNaLdUZe04yrOWBaiBfN34lF"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A04(Landroid/view/View;)Z

    .line 60129
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60130
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/16 v1, 0x2b

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60131
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 60132
    if-gez p2, :cond_1

    .line 60133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QP;->A7I()I

    move-result v1

    .line 60134
    .local v0, "offset":I
    .restart local v0    # "offset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v1, p4}, Lcom/facebook/ads/redexgen/X/QO;->A07(IZ)V

    .line 60135
    if-eqz p4, :cond_0

    .line 60136
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A03(Landroid/view/View;)V

    .line 60137
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, p1, v1, p3}, Lcom/facebook/ads/redexgen/X/QP;->A4K(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 60138
    return-void

    .line 60139
    .end local v0    # "offset":I
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/QQ;->A00(I)I

    move-result v1

    goto :goto_0
.end method

.method public final A0I(Landroid/view/View;IZ)V
    .locals 4

    .line 60140
    if-gez p2, :cond_1

    .line 60141
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    sget-object v2, Lcom/facebook/ads/redexgen/X/QQ;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60142
    .end local v0
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/QQ;->A00(I)I

    move-result v3

    goto :goto_0

    .line 60143
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/QQ;->A04:[Ljava/lang/String;

    const-string v1, "WWxR4kuTyiSS3k1dOopZM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "jpAqbovCz6NUDLwJv0FYFncHe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/QP;->A7I()I

    move-result v3

    .line 60144
    .local v0, "offset":I
    .restart local v0    # "offset":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v3, p3}, Lcom/facebook/ads/redexgen/X/QO;->A07(IZ)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/QQ;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_0

    .line 60145
    sget-object v2, Lcom/facebook/ads/redexgen/X/QQ;->A04:[Ljava/lang/String;

    const-string v1, "lrFB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz p3, :cond_3

    .line 60146
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A03(Landroid/view/View;)V

    .line 60147
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/QP;->addView(Landroid/view/View;I)V

    .line 60148
    return-void
.end method

.method public final A0J(Landroid/view/View;Z)V
    .locals 1

    .line 60149
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/QQ;->A0I(Landroid/view/View;IZ)V

    .line 60150
    return-void
.end method

.method public final A0K(Landroid/view/View;)Z
    .locals 1

    .line 60151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final A0L(Landroid/view/View;)Z
    .locals 3

    .line 60152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QP;->AA7(Landroid/view/View;)I

    move-result v2

    .line 60153
    .local v0, "index":I
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne v2, v0, :cond_0

    .line 60154
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A04(Landroid/view/View;)Z

    .line 60155
    return v1

    .line 60156
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/QO;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/QO;->A09(I)Z

    .line 60158
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QQ;->A04(Landroid/view/View;)Z

    .line 60159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A01:Lcom/facebook/ads/redexgen/X/QP;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QP;->AIW(I)V

    .line 60160
    return v1

    .line 60161
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 60162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QQ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QQ;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
