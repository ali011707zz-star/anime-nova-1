.class public final Lcom/facebook/ads/redexgen/X/nd;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/nh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3304
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ttZbCw840LiCmMMagoH7x1ccnhXQbEM1"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MpxecthRuEJqGUuoNQ5A37YBhHZeOVcm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "F5DHcgT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zg8RxjbDPuahNU47bDpYXJZcrKLRzeUW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lK8l2vp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Hs2vTdzQZwjFS6KGav0LYTLDhx5JGetB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dmVTdLfQWkJOIA8zEGmBV6szkdy3co89"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IVYzXJf67D23TQo71K1DHnZqVzwcGU9Z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nd;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 101159
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nd;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 101160
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nd;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->clear()V

    .line 101161
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 101162
    .local p1, "this":Lcom/facebook/ads/redexgen/X/nd;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101163
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 101164
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 101165
    :cond_0
    instance-of v4, p1, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/nd;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/nd;->A01:[Ljava/lang/String;

    const-string v1, "ECwcYxYjSLCNiUqu2ExsZmnTntzmdq50"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 101166
    check-cast p1, Ljava/util/Map$Entry;

    .line 101167
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/nh;->A06(Lcom/facebook/ads/redexgen/X/nh;Ljava/lang/Object;)I

    move-result v1

    .line 101168
    .local v3, "index":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/nh;->A0I(Lcom/facebook/ads/redexgen/X/nh;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 101169
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "index":I
    :cond_3
    return v3
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 101170
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nd;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 101171
    .local p1, "this":Lcom/facebook/ads/redexgen/X/nd;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v0

    .line 101172
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 101173
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 101174
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 101175
    check-cast p1, Ljava/util/Map$Entry;

    .line 101176
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101177
    return v2

    .line 101178
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nh;->A05(Lcom/facebook/ads/redexgen/X/nh;)I

    move-result v5

    .line 101179
    .local v3, "mask":I
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 101180
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    .line 101181
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0G(Lcom/facebook/ads/redexgen/X/nh;)Ljava/lang/Object;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    .line 101182
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0U(Lcom/facebook/ads/redexgen/X/nh;)[I

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    .line 101183
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0X(Lcom/facebook/ads/redexgen/X/nh;)[Ljava/lang/Object;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    .line 101184
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0Y(Lcom/facebook/ads/redexgen/X/nh;)[Ljava/lang/Object;

    move-result-object v9

    .line 101185
    invoke-static/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/nk;->A06(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    .line 101186
    .local v4, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 101187
    return v2

    .line 101188
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/nh;->A0n(II)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/nd;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_3

    .line 101189
    sget-object v2, Lcom/facebook/ads/redexgen/X/nd;->A01:[Ljava/lang/String;

    const-string v1, "padFRdr7QgkeMqaUt5IwgmGjkWqeexUC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/nh;->A04(Lcom/facebook/ads/redexgen/X/nh;)I

    .line 101190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0j()V

    .line 101191
    const/4 v0, 0x1

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 101192
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "mask":I
    .end local v4    # "index":I
    :cond_4
    return v2
.end method

.method public final size()I
    .locals 1

    .line 101193
    .local p0, "this":Lcom/facebook/ads/redexgen/X/nd;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nd;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->size()I

    move-result v0

    return v0
.end method
