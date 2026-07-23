.class public abstract Lcom/facebook/ads/redexgen/X/2Q;
.super Lcom/facebook/ads/redexgen/X/Au;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/Au<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 130
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CGVvWGsuzzGHQgo9zzOKQIJUE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KVb58jbZH1vlab4O5iE8zizSXMaJECXq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VptaZc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "glKzXP3GfNyb6OMGvuDXfVC1yHy2PNCZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pmbHPYSyFX1GsR09gqUeaAeR0V5aRJK7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qAEg6Zt1UGu8L4Bf8ygtzAiT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mjI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bmKWD7kDb3scBQ7vRqmkLSkTVZvrcW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "position"
        }
    .end annotation

    .line 9100
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2Q;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Au;-><init>()V

    .line 9101
    invoke-static {p2, p1}, Lcom/facebook/ads/redexgen/X/ki;->A01(II)I

    .line 9102
    iput p1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A01:I

    .line 9103
    iput p2, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:I

    .line 9104
    return-void
.end method


# virtual methods
.method public abstract A00(I)Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 2

    .line 9105
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2Q;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A01:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 9106
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2Q;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 9107
    .local v2, "this":Lcom/facebook/ads/redexgen/X/2Q;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2Q;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9108
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Q;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A02:[Ljava/lang/String;

    const-string v1, "xP2Fxu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "lDEAidUPCXG34cALHoPwa9Bl5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2Q;->A00(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 9109
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 9110
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2Q;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 9111
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2Q;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2Q;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9112
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2Q;->A00(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 9113
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 9114
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2Q;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
