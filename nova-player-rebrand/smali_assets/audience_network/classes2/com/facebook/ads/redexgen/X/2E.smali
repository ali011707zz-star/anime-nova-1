.class public final Lcom/facebook/ads/redexgen/X/2E;
.super Lcom/facebook/ads/redexgen/X/BP;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/BP<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final A02:Lcom/facebook/ads/redexgen/X/BP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient A00:[Ljava/lang/Object;

.field public final transient A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 127
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2E;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/2E;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2E;->A02:Lcom/facebook/ads/redexgen/X/BP;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "size"
        }
    .end annotation

    .line 8937
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2E;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BP;-><init>()V

    .line 8938
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:[Ljava/lang/Object;

    .line 8939
    iput p2, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:I

    .line 8940
    return-void
.end method


# virtual methods
.method public final A0G()I
    .locals 1

    .line 8941
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2E;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:I

    return v0
.end method

.method public final A0H()I
    .locals 1

    .line 8942
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2E;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final A0I([Ljava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "dstOff"
        }
    .end annotation

    .line 8943
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2E;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:I

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8944
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:I

    add-int/2addr v0, p2

    return v0
.end method

.method public final A0K()Z
    .locals 1

    .line 8945
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2E;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final A0L()[Ljava/lang/Object;
    .locals 1

    .line 8946
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2E;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:[Ljava/lang/Object;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
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

    .line 8947
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2E;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:I

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A00(II)I

    .line 8948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A00:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 8949
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2E;, "Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2E;->A01:I

    return v0
.end method
