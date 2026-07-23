.class public final Lcom/facebook/ads/redexgen/X/7T;
.super Lcom/facebook/ads/redexgen/X/hz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Px;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewParentCompatApi21Impl"
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 471
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VY80zOaYPxkOtyUrTAwyx7zC77lFdeof"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qJYWmvtZwfwBqccNWJcDxq0wxgEd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0lF9l2PIa0G"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8HUI8rnTM6nJrcfosCRNO8OvNswxKEJA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TWKnH1rmbYSUhH4KNgSY2AsRWoqO1pqp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "o5QSN7NKgyovRW2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W85"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rhxQt59st5mNUHdFmf4JU2hKMVhH4nOT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7T;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7T;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21108
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/hz;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/7T;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2c

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
    .locals 4

    const/16 v0, 0x195

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/7T;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/7T;->A01:[Ljava/lang/String;

    const-string v1, "0rHD8iYFkM5KLcEdxbz1wO1gXSem16M8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/7T;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x65t
        -0x21t
        -0x16t
        -0x20t
        -0x12t
        -0x65t
        -0x17t
        -0x16t
        -0x11t
        -0x65t
        -0x1ct
        -0x18t
        -0x15t
        -0x19t
        -0x20t
        -0x18t
        -0x20t
        -0x17t
        -0x11t
        -0x65t
        -0x1ct
        -0x17t
        -0x11t
        -0x20t
        -0x13t
        -0x1ft
        -0x24t
        -0x22t
        -0x20t
        -0x65t
        -0x18t
        -0x20t
        -0x11t
        -0x1dt
        -0x16t
        -0x21t
        -0x65t
        -0x16t
        -0x17t
        -0x37t
        -0x20t
        -0x12t
        -0x11t
        -0x20t
        -0x21t
        -0x3ft
        -0x19t
        -0x1ct
        -0x17t
        -0x1et
        0x65t
        -0x57t
        -0x4ct
        -0x56t
        -0x48t
        0x65t
        -0x4dt
        -0x4ct
        -0x47t
        0x65t
        -0x52t
        -0x4et
        -0x4bt
        -0x4ft
        -0x56t
        -0x4et
        -0x56t
        -0x4dt
        -0x47t
        0x65t
        -0x52t
        -0x4dt
        -0x47t
        -0x56t
        -0x49t
        -0x55t
        -0x5at
        -0x58t
        -0x56t
        0x65t
        -0x4et
        -0x56t
        -0x47t
        -0x53t
        -0x4ct
        -0x57t
        0x65t
        -0x4ct
        -0x4dt
        -0x6dt
        -0x56t
        -0x48t
        -0x47t
        -0x56t
        -0x57t
        -0x6bt
        -0x49t
        -0x56t
        -0x75t
        -0x4ft
        -0x52t
        -0x4dt
        -0x54t
        0x54t
        -0x68t
        -0x5dt
        -0x67t
        -0x59t
        0x54t
        -0x5et
        -0x5dt
        -0x58t
        0x54t
        -0x63t
        -0x5ft
        -0x5ct
        -0x60t
        -0x67t
        -0x5ft
        -0x67t
        -0x5et
        -0x58t
        0x54t
        -0x63t
        -0x5et
        -0x58t
        -0x67t
        -0x5at
        -0x66t
        -0x6bt
        -0x69t
        -0x67t
        0x54t
        -0x5ft
        -0x67t
        -0x58t
        -0x64t
        -0x5dt
        -0x68t
        0x54t
        -0x5dt
        -0x5et
        -0x7et
        -0x67t
        -0x59t
        -0x58t
        -0x67t
        -0x68t
        -0x7ct
        -0x5at
        -0x67t
        -0x79t
        -0x69t
        -0x5at
        -0x5dt
        -0x60t
        -0x60t
        -0x7ft
        -0x3bt
        -0x30t
        -0x3at
        -0x2ct
        -0x7ft
        -0x31t
        -0x30t
        -0x2bt
        -0x7ft
        -0x36t
        -0x32t
        -0x2ft
        -0x33t
        -0x3at
        -0x32t
        -0x3at
        -0x31t
        -0x2bt
        -0x7ft
        -0x36t
        -0x31t
        -0x2bt
        -0x3at
        -0x2dt
        -0x39t
        -0x3et
        -0x3ct
        -0x3at
        -0x7ft
        -0x32t
        -0x3at
        -0x2bt
        -0x37t
        -0x30t
        -0x3bt
        -0x7ft
        -0x30t
        -0x31t
        -0x51t
        -0x3at
        -0x2ct
        -0x2bt
        -0x3at
        -0x3bt
        -0x4ct
        -0x3ct
        -0x2dt
        -0x30t
        -0x33t
        -0x33t
        -0x42t
        0x2t
        0xdt
        0x3t
        0x11t
        -0x42t
        0xct
        0xdt
        0x12t
        -0x42t
        0x7t
        0xbt
        0xet
        0xat
        0x3t
        0xbt
        0x3t
        0xct
        0x12t
        -0x42t
        0x7t
        0xct
        0x12t
        0x3t
        0x10t
        0x4t
        -0x1t
        0x1t
        0x3t
        -0x42t
        0xbt
        0x3t
        0x12t
        0x6t
        0xdt
        0x2t
        -0x42t
        0xdt
        0xct
        -0x14t
        0x3t
        0x11t
        0x12t
        0x3t
        0x2t
        -0xft
        0x1t
        0x10t
        0xdt
        0xat
        0xat
        -0x21t
        0x1t
        0x1t
        0x3t
        0xet
        0x12t
        0x3t
        0x2t
        -0x6at
        -0x26t
        -0x1bt
        -0x25t
        -0x17t
        -0x6at
        -0x1ct
        -0x1bt
        -0x16t
        -0x6at
        -0x21t
        -0x1dt
        -0x1at
        -0x1et
        -0x25t
        -0x1dt
        -0x25t
        -0x1ct
        -0x16t
        -0x6at
        -0x21t
        -0x1ct
        -0x16t
        -0x25t
        -0x18t
        -0x24t
        -0x29t
        -0x27t
        -0x25t
        -0x6at
        -0x1dt
        -0x25t
        -0x16t
        -0x22t
        -0x1bt
        -0x26t
        -0x6at
        -0x1bt
        -0x1ct
        -0x37t
        -0x16t
        -0x29t
        -0x18t
        -0x16t
        -0x3ct
        -0x25t
        -0x17t
        -0x16t
        -0x25t
        -0x26t
        -0x37t
        -0x27t
        -0x18t
        -0x1bt
        -0x1et
        -0x1et
        -0x54t
        -0x10t
        -0x5t
        -0xft
        -0x1t
        -0x54t
        -0x6t
        -0x5t
        0x0t
        -0x54t
        -0xbt
        -0x7t
        -0x4t
        -0x8t
        -0xft
        -0x7t
        -0xft
        -0x6t
        0x0t
        -0x54t
        -0xbt
        -0x6t
        0x0t
        -0xft
        -0x2t
        -0xet
        -0x13t
        -0x11t
        -0xft
        -0x54t
        -0x7t
        -0xft
        0x0t
        -0xct
        -0x5t
        -0x10t
        -0x54t
        -0x5t
        -0x6t
        -0x21t
        0x0t
        -0x5t
        -0x4t
        -0x26t
        -0xft
        -0x1t
        0x0t
        -0xft
        -0x10t
        -0x21t
        -0x11t
        -0x2t
        -0x5t
        -0x8t
        -0x8t
        -0x24t
        -0x11t
        -0x15t
        -0x3t
        -0x2at
        -0x19t
        -0x8t
        -0x15t
        -0xct
        -0x6t
        -0x5at
        -0x19t
        -0x6t
        -0xat
        0x8t
        -0x1ft
        -0xet
        0x3t
        -0xat
        -0x1t
        0x5t
        -0x2ct
        0x0t
        -0x2t
        0x1t
        -0xet
        0x5t
    .end array-data
.end method


# virtual methods
.method public final A02(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 5

    .line 21109
    :try_start_0
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21110
    :catch_0
    move-exception v4

    .line 21111
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17a

    const/16 v1, 0xb

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x143

    const/16 v1, 0x37

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x185

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21112
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :goto_0
    return-void
.end method

.method public final A03(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 11

    .line 21113
    :try_start_0
    move/from16 v10, p6

    move/from16 v9, p5

    move v8, p4

    move v7, p3

    move-object v6, p2

    move-object v5, p1

    invoke-interface/range {v5 .. v10}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21114
    :catch_0
    move-exception v4

    .line 21115
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17a

    const/16 v1, 0xb

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x9d

    const/16 v1, 0x33

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x185

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21116
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :goto_0
    return-void
.end method

.method public final A04(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 5

    .line 21117
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21118
    :catch_0
    move-exception v4

    .line 21119
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17a

    const/16 v1, 0xb

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x67

    const/16 v1, 0x36

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x185

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21120
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :goto_0
    return-void
.end method

.method public final A05(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 5

    .line 21121
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21122
    :catch_0
    move-exception v4

    .line 21123
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17a

    const/16 v1, 0xb

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xd0

    const/16 v1, 0x3b

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x185

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21124
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :goto_0
    return-void
.end method

.method public final A06(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 5

    .line 21125
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21126
    :catch_0
    move-exception v4

    .line 21127
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17a

    const/16 v1, 0xb

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0x35

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x185

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21128
    const/4 v0, 0x0

    return v0
.end method

.method public final A07(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 5

    .line 21129
    :try_start_0
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21130
    :catch_0
    move-exception v4

    .line 21131
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17a

    const/16 v1, 0xb

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x185

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21132
    const/4 v0, 0x0

    return v0
.end method

.method public final A08(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 5

    .line 21133
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21134
    :catch_0
    move-exception v4

    .line 21135
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17a

    const/16 v1, 0xb

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x10b

    const/16 v1, 0x38

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x185

    const/16 v1, 0x10

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7T;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21136
    const/4 v0, 0x0

    return v0
.end method
