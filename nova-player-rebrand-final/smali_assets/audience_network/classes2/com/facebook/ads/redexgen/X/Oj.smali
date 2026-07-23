.class public final Lcom/facebook/ads/redexgen/X/Oj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Oi;
    }
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/VI;

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oj;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Ljava/util/List;

    .line 56092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A01:Ljava/util/List;

    .line 56093
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VI;)V
    .locals 1

    .line 56094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Ljava/util/List;

    .line 56096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A01:Ljava/util/List;

    .line 56097
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/VI;

    .line 56098
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oj;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x4f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x35t
        -0x2dt
        -0x27t
        -0x1et
        -0x28t
        0x1bt
        0xft
        0x1ct
        0xft
        0x15t
        0x13t
        0xdt
        0xft
        0x12t
        0xdt
        0x1et
        0x20t
        0x13t
        0x14t
        0x13t
        0x20t
        0x13t
        0x1ct
        0x11t
        0x13t
        0x21t
        -0x7t
        -0x6t
        -0x2t
        -0xdt
        -0x7t
        -0x8t
        -0x3t
        -0x17t
        -0x3t
        -0x11t
        -0xat
        -0x11t
        -0x13t
        -0x2t
        -0x11t
        -0x12t
        0x42t
        0x43t
        0x30t
        0x41t
        0x43t
        0x0t
        -0x2t
        -0x10t
        -0x3t
        -0x16t
        -0xbt
        -0x6t
        0x0t
        -0x3t
        -0x7t
        -0x10t
        0x4t
        -0x24t
        -0x33t
        -0x22t
        -0x3ct
        -0x3at
        -0x2et
        -0x3ct
        -0x32t
        -0x3ct
        -0x28t
        -0x36t
        -0x36t
        -0x32t
        -0x2dt
        -0x34t
        -0x3ct
        -0x27t
        -0x33t
        -0x32t
        -0x28t
    .end array-data
.end method


# virtual methods
.method public final A02()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56099
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 56100
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Ljava/util/List;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2f

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56101
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A01:Ljava/util/List;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1a

    const/16 v1, 0x10

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56102
    return-object v4
.end method

.method public final A03()V
    .locals 1

    .line 56103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56105
    return-void
.end method

.method public final A04()V
    .locals 4

    .line 56106
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Ljava/util/List;

    const/4 v2, 0x5

    const/16 v1, 0x15

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/VI;

    if-eqz v0, :cond_0

    .line 56108
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0B:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 56109
    :cond_0
    return-void
.end method

.method public final A05()V
    .locals 4

    .line 56110
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Ljava/util/List;

    const/16 v2, 0x2a

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56111
    return-void
.end method

.method public final A06()V
    .locals 4

    .line 56112
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Ljava/util/List;

    const/16 v2, 0x3b

    const/16 v1, 0x14

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/VI;

    if-eqz v0, :cond_0

    .line 56114
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A0C:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 56115
    :cond_0
    return-void
.end method

.method public final A07(I)V
    .locals 2

    .line 56116
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A01:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56117
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/Oi;)V
    .locals 5

    .line 56118
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oi;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x4

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/VI;

    if-eqz v0, :cond_0

    .line 56120
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A09:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 56121
    :cond_0
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/Oi;I)V
    .locals 5

    .line 56122
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oi;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56123
    return-void
.end method

.method public final A0A()Z
    .locals 1

    .line 56124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
