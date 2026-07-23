.class public final Lcom/facebook/ads/redexgen/X/bS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bT;->A02()Lcom/facebook/ads/redexgen/X/Os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bT;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2638
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vbhQ772KrwwyBQLqSF0Uu1FphjZjOARV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IBW1fWQIdJqQUPoAbqLmLzYGzWB3AFkH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HmN3zdDh8QwXEewFzD7cRbgjZyFP74AB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Oi9kNPYT1HPYswCV1WaLs9ucCNZpJU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sMEUezQpAx8L6vs1CqhHVpU4S2CWDUzq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l1dCE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7cDzGVZ60"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "I6JIiCAB6gfHFMUig9c3ijD4Ynx17v"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bS;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bS;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77839
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bS;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x36

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

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bS;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x47t
        -0x4at
        -0x42t
        -0x46t
        -0x54t
        -0x47t
        -0x5at
        -0x49t
        -0x54t
        -0x54t
        -0x4et
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

    .line 77840
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bS;
    .local v4, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bT;->A05(Lcom/facebook/ads/redexgen/X/bT;)Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bS;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Kr;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    .line 77841
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bS;->A00:Lcom/facebook/ads/redexgen/X/bT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bT;->A0B()V

    .line 77842
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/bS;
    .end local v4    # "view":Landroid/view/View;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/bS;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/bS;->A02:[Ljava/lang/String;

    const-string v1, "D5vzh5bnP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
