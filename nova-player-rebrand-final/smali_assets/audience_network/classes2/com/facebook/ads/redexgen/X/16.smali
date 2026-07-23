.class public final Lcom/facebook/ads/redexgen/X/16;
.super Lcom/facebook/ads/redexgen/X/1r;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/1r<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0002\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B%\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0016\u0010\u000c\u001a\u00028\u00012\u0006\u0010\r\u001a\u00020\u0007H\u0096\u0002\u00a2\u0006\u0002\u0010\u000eR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/collections/AbstractList$SubList;",
        "E",
        "Lkotlin/collections/AbstractList;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "list",
        "fromIndex",
        "",
        "toIndex",
        "<init>",
        "(Lkotlin/collections/AbstractList;II)V",
        "_size",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "size",
        "getSize",
        "()I",
        "kotlin-stdlib"
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
.field public static A03:[B


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/1r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/1r<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/16;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1r;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1r<",
            "+TE;>;II)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/16;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/qY;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4949
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1r;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Lcom/facebook/ads/redexgen/X/1r;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    .line 4950
    sget-object v2, Lcom/facebook/ads/redexgen/X/1r;->A02:Lcom/facebook/ads/redexgen/X/qk;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Lcom/facebook/ads/redexgen/X/1r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ai;->size()I

    move-result v0

    invoke-virtual {v2, v1, p3, v0}, Lcom/facebook/ads/redexgen/X/qk;->A05(III)V

    .line 4951
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/facebook/ads/redexgen/X/16;->A00:I

    .line 4952
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xc

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

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/16;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x60t
        -0x63t
        -0x59t
        -0x58t
    .end array-data
.end method


# virtual methods
.method public final A0C()I
    .locals 1

    .line 4953
    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:I

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4954
    sget-object v1, Lcom/facebook/ads/redexgen/X/1r;->A02:Lcom/facebook/ads/redexgen/X/qk;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:I

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/qk;->A03(II)V

    .line 4955
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Lcom/facebook/ads/redexgen/X/1r;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1r;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
