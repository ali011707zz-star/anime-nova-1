.class public final Lcom/facebook/ads/redexgen/X/cH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cJ;->A0D(Lcom/facebook/ads/redexgen/X/Kr;Landroid/widget/ImageView;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Kr;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2667
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "524C9pC8aLVKflbvvv2K7MlVaT1Y4oXj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lRM8H52A4hKqkKdkEH8S6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pzMD8hEzrN8WJeuHzmUfipPCg7LRhl7h"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lnDY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "95wdtjn99T2hJygpaQjrD03HNRuLahXP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "M3Z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WkizL2fPiwDBFcFyMDRmv7nfAM7GjuvS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zFeU71BaV6LqmyzLw1trLotvqmYyyi91"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cH;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cH;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cJ;Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78912
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cH;->A01:Lcom/facebook/ads/redexgen/X/cJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cH;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cH;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xa

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

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cH;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x5dt
        0x56t
        0x5ct
        0x5bt
        0x59t
        0x4at
        0x5ct
        0x4bt
    .end array-data
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 78913
    .local v0, "this":Lcom/facebook/ads/redexgen/X/cH;
    .local v4, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/cH;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    if-eqz v0, :cond_1

    .line 78914
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/cH;->A00:Lcom/facebook/ads/redexgen/X/Kr;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 78915
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/cH;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/cH;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/cH;->A03:[Ljava/lang/String;

    const-string v1, "HSmZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "XRAr9C2gXTfshR7ejhjPx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
