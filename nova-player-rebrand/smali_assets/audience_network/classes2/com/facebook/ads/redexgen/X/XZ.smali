.class public final Lcom/facebook/ads/redexgen/X/XZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xa;->A01(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/T8;

.field public final synthetic A02:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XZ;->A01()V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/LinkedBlockingQueue;Lcom/facebook/ads/redexgen/X/T8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72734
    iput p1, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:I

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XZ;->A02:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/XZ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/XZ;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x34

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

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/XZ;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0x2at
        0x21t
        0x2at
        0x3dt
        0x26t
        0x2ct
        0x2bt
        0x29t
        0x38t
        0x1ft
        0x3ct
        0x20t
        0x25t
        0x38t
        0x2t
        0x2dt
        0x21t
        0x29t
        0x2bt
        0x29t
        0x38t
        0x18t
        0x35t
        0x3ct
        0x29t
        0x49t
        0x4bt
        0x5at
        0x78t
        0x4ft
        0x42t
        0x5bt
        0x4bt
        0x1dt
        0x1ct
        0x31t
        0x1at
        0x17t
        0x11t
        0x19t
        0x1t
        0x7t
        0x1ft
        0x1t
        0x20t
        0x17t
        0x13t
        0x16t
        0xbt
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72735
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x22

    const/16 v1, 0x10

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v1, p3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    const/4 v5, 0x0

    aget-object v0, p3, v5

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 72736
    aget-object v0, p3, v5

    check-cast v0, Ljava/util/List;

    .line 72737
    .local v2, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 72738
    .local v4, "c":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v2, 0x7

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 72739
    .local v5, "getSplitNameMethod":Ljava/lang/reflect/Method;
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 72740
    .local v6, "splitName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v2, 0x13

    const/4 v1, 0x7

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 72741
    .local v7, "getTypeMethod":Ljava/lang/reflect/Method;
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72742
    .local v8, "type":I
    if-nez v7, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A00:I

    if-ne v1, v0, :cond_0

    .line 72743
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v2, 0x1a

    const/16 v1, 0x8

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 72744
    .local v3, "getValueMethod":Ljava/lang/reflect/Method;
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 72745
    .local v1, "value":[B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A02:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 72746
    return-object v6

    .line 72747
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A02:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72748
    :catchall_0
    move-exception v1

    .line 72749
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XZ;->A01:Lcom/facebook/ads/redexgen/X/T8;

    .line 72750
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/Td;->A1G:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 72751
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XZ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 72752
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-object v6
.end method
