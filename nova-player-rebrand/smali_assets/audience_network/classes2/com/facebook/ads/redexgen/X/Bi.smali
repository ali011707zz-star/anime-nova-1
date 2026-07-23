.class public final Lcom/facebook/ads/redexgen/X/Bi;
.super Lcom/facebook/ads/redexgen/X/lr;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/lr<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public A00:I

.field public final A01:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/nh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nh;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "index"
        }
    .end annotation

    .line 31135
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bi;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A02:Lcom/facebook/ads/redexgen/X/nh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lr;-><init>()V

    .line 31136
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/nh;->A0H(Lcom/facebook/ads/redexgen/X/nh;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A01:Ljava/lang/Object;

    .line 31137
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:I

    .line 31138
    return-void
.end method

.method private A00()V
    .locals 3

    .line 31139
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bi;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A02:Lcom/facebook/ads/redexgen/X/nh;

    .line 31140
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Bi;->A01:Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A02:Lcom/facebook/ads/redexgen/X/nh;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:I

    .line 31141
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0H(Lcom/facebook/ads/redexgen/X/nh;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/CB;->A01(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31142
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A02:Lcom/facebook/ads/redexgen/X/nh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A01:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/nh;->A06(Lcom/facebook/ads/redexgen/X/nh;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:I

    .line 31143
    :cond_1
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 31144
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bi;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A01:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 31145
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Bi;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A02:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v1

    .line 31146
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 31147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A01:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qF;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 31148
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bi;->A00()V

    .line 31149
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/qF;->A00()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A02:Lcom/facebook/ads/redexgen/X/nh;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0I(Lcom/facebook/ads/redexgen/X/nh;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 31150
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Bi;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>.MapEntry;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A02:Lcom/facebook/ads/redexgen/X/nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nh;->A0h()Ljava/util/Map;

    move-result-object v1

    .line 31151
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 31152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A01:Ljava/lang/Object;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qF;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 31153
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bi;->A00()V

    .line 31154
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 31155
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A02:Lcom/facebook/ads/redexgen/X/nh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A01:Ljava/lang/Object;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/nh;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31156
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qF;->A00()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 31157
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A02:Lcom/facebook/ads/redexgen/X/nh;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/nh;->A0I(Lcom/facebook/ads/redexgen/X/nh;I)Ljava/lang/Object;

    move-result-object v2

    .line 31158
    .local v1, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bi;->A02:Lcom/facebook/ads/redexgen/X/nh;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bi;->A00:I

    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/nh;->A0S(Lcom/facebook/ads/redexgen/X/nh;ILjava/lang/Object;)V

    .line 31159
    return-object v2
.end method
