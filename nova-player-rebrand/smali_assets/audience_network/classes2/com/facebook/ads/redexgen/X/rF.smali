.class public final Lcom/facebook/ads/redexgen/X/rF;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/rI;

.field public A01:Z

.field public final A02:Landroid/graphics/Rect;

.field public final A03:Landroid/graphics/Rect;

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/hc;

.field public final A06:Lcom/facebook/ads/redexgen/X/rW;

.field public final A07:Lcom/facebook/ads/redexgen/X/rR;

.field public final A08:Lcom/facebook/ads/redexgen/X/rQ;

.field public final A09:Lcom/facebook/ads/redexgen/X/Am;

.field public final A0A:Lcom/facebook/ads/redexgen/X/rH;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Al;

.field public final A0C:Ljava/lang/Runnable;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/r4;",
            ">;"
        }
    .end annotation
.end field

.field public final A0F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final A0G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3593
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hvB6Y5lFyDpOUo5WE2d6RBuRXgbY5ZUm"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ywY8EvofFV55395JkJDayoeTErGWKbkG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zJ8LsRBLLSys8CPHp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gH0zTalybZGhm0qBmcsXdCP28l4r1an9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kduBCn7ltQGfodptcqURcnO6EcdnH0I2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "cBbzau3JoVbeDspRwe3LG6GIj8yddyUH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/rF;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rQ;Lcom/facebook/ads/redexgen/X/hc;Lcom/facebook/ads/redexgen/X/Al;Lcom/facebook/ads/redexgen/X/rH;Lcom/facebook/ads/redexgen/X/rR;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/rW;)V
    .locals 10

    .line 106103
    const/16 v9, 0x64

    move-object v0, p0

    move-object/from16 v8, p8

    move-object/from16 v7, p7

    move-object/from16 v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/rF;-><init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rQ;Lcom/facebook/ads/redexgen/X/hc;Lcom/facebook/ads/redexgen/X/Al;Lcom/facebook/ads/redexgen/X/rH;Lcom/facebook/ads/redexgen/X/rR;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/rW;I)V

    .line 106104
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rQ;Lcom/facebook/ads/redexgen/X/hc;Lcom/facebook/ads/redexgen/X/Al;Lcom/facebook/ads/redexgen/X/rH;Lcom/facebook/ads/redexgen/X/rR;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/rW;I)V
    .locals 2

    .line 106105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A03:Landroid/graphics/Rect;

    .line 106107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A02:Landroid/graphics/Rect;

    .line 106108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0G:Ljava/util/List;

    .line 106109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0E:Ljava/util/List;

    .line 106110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0F:Ljava/util/List;

    .line 106111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0D:Ljava/util/List;

    .line 106112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A01:Z

    .line 106113
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/rF;->A09:Lcom/facebook/ads/redexgen/X/Am;

    .line 106114
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/rF;->A08:Lcom/facebook/ads/redexgen/X/rQ;

    .line 106115
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/rF;->A05:Lcom/facebook/ads/redexgen/X/hc;

    .line 106116
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/rF;->A0B:Lcom/facebook/ads/redexgen/X/Al;

    .line 106117
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/rF;->A0A:Lcom/facebook/ads/redexgen/X/rH;

    .line 106118
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/rF;->A07:Lcom/facebook/ads/redexgen/X/rR;

    .line 106119
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/rF;->A04:Landroid/os/Handler;

    .line 106120
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/rF;->A06:Lcom/facebook/ads/redexgen/X/rW;

    .line 106121
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 106122
    .local v0, "callerException":Ljava/lang/Exception;
    new-instance v0, Lcom/facebook/ads/redexgen/X/rG;

    invoke-direct {v0, p0, p9, v1}, Lcom/facebook/ads/redexgen/X/rG;-><init>(Lcom/facebook/ads/redexgen/X/rF;ILjava/lang/Exception;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0C:Ljava/lang/Runnable;

    .line 106123
    return-void
.end method

.method public static A00(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 106124
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 106125
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 106126
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 106127
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 106128
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/rF;)Landroid/os/Handler;
    .locals 0

    .line 106129
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/rF;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/rF;)Lcom/facebook/ads/redexgen/X/hc;
    .locals 0

    .line 106130
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/rF;->A05:Lcom/facebook/ads/redexgen/X/hc;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/rF;)Lcom/facebook/ads/redexgen/X/rW;
    .locals 0

    .line 106131
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/rF;)Ljava/lang/Runnable;
    .locals 0

    .line 106132
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/rF;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 4

    const/16 v3, 0x15

    sget-object v2, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const-string v1, "afzSeuF2JzxaSSSWQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/rF;->A0H:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x41t
        -0x37t
        -0x5bt
        -0x47t
        -0x47t
        -0x3et
        -0x35t
        -0x46t
        -0x45t
        -0x46t
        -0x35t
        -0x42t
        -0x34t
        -0x42t
        -0x33t
        -0x37t
        -0x3ct
        -0x48t
        -0x4bt
        -0x38t
        -0x47t
    .end array-data
.end method

.method private A07(J)V
    .locals 2

    .line 106133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106134
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A08:Lcom/facebook/ads/redexgen/X/rQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0D:Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/rQ;->A9Z(Ljava/util/List;)V

    .line 106135
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A0B:Lcom/facebook/ads/redexgen/X/Al;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0D:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Al;->A4h(JLjava/util/List;)V

    .line 106136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A0B:Lcom/facebook/ads/redexgen/X/Al;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Al;->A6P(Ljava/util/List;)V

    .line 106137
    return-void

    .line 106138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private A08(J)V
    .locals 4

    .line 106139
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A08:Lcom/facebook/ads/redexgen/X/rQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0D:Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/rQ;->A9Z(Ljava/util/List;)V

    .line 106140
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A0B:Lcom/facebook/ads/redexgen/X/Al;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0D:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Al;->A4h(JLjava/util/List;)V

    .line 106141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106143
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/rF;->A0A:Lcom/facebook/ads/redexgen/X/rH;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A0E:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0F:Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/rH;->A0A(Ljava/util/Collection;Ljava/util/List;)V

    .line 106144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/r4;

    .line 106145
    .local v1, "node":Lcom/facebook/ads/redexgen/X/r4;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A09:Lcom/facebook/ads/redexgen/X/Am;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:Z

    if-eqz v0, :cond_0

    .line 106146
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A0A:Lcom/facebook/ads/redexgen/X/rH;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1v;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/1v;-><init>(Lcom/facebook/ads/redexgen/X/rF;Lcom/facebook/ads/redexgen/X/r4;)V

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/rH;->A09(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/AZ;)V

    goto :goto_0

    .line 106147
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0A:Lcom/facebook/ads/redexgen/X/rH;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/rH;->A04(Lcom/facebook/ads/redexgen/X/r4;)Lcom/facebook/ads/redexgen/X/rN;

    move-result-object v0

    .line 106148
    .local v2, "viewpointData":Lcom/facebook/ads/redexgen/X/rN;
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/rF;->A0A(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rN;)V

    goto :goto_0

    .line 106149
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/rF;->A0B:Lcom/facebook/ads/redexgen/X/Al;

    sget-object v2, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const-string v1, "nrcH38GFR0AnNATGilmIDxGLEfq4UsQc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "6vipxWZV3AO1VWKwqmDQLGTjEEAJtLqC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0F:Ljava/util/List;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Al;->A6P(Ljava/util/List;)V

    .line 106150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A00:Lcom/facebook/ads/redexgen/X/rI;

    if-eqz v0, :cond_3

    .line 106151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A00:Lcom/facebook/ads/redexgen/X/rI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/rI;->AFq()V

    .line 106152
    :cond_3
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const-string v1, "ZFnmTy5Nmh2EcYlYiSa9Vz9TEA3yApsY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "CtxgPYEhgpysDBKYvCBtA2zCEZrEvZYl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    .line 106153
    :goto_1
    const/16 v2, 0xf

    const/4 v1, 0x6

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/rF;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const-string v1, "MnMopZnqiJPVeBF4I"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    goto :goto_1

    .line 106154
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106156
    return-void

    .line 106157
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 106158
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/rF;J)V
    .locals 0

    .line 106159
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/rF;->A08(J)V

    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rN;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/r4;",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "**>;)V"
        }
    .end annotation

    .line 106160
    .local p4, "viewpointData":Lcom/facebook/ads/redexgen/X/rN;, "Lcom/instagram/common/viewpoint/core/ViewpointData<**>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 106161
    .local v1, "containerRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A03:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A02:Landroid/graphics/Rect;

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/r4;->A9Y(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/rN;->A0B:Lcom/facebook/ads/redexgen/X/rN;

    if-eq p2, v0, :cond_0

    .line 106162
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const-string v1, "ovGzBU7jFj6BmSvOwlnDuwIQ8kdYWcjX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "9Q0zz3j3tYyfuWL6OVNzyvBOA9tkBax5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 106163
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/rF;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106164
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/rF;->A0B:Lcom/facebook/ads/redexgen/X/Al;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/rF;->A03:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A02:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A09:Lcom/facebook/ads/redexgen/X/Am;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A01:Z

    invoke-interface {v3, p2, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Al;->A46(Lcom/facebook/ads/redexgen/X/rN;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 106165
    :cond_3
    return-void
.end method

.method private A0B()Z
    .locals 5

    .line 106166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A08:Lcom/facebook/ads/redexgen/X/rQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/rQ;->A7U()Landroid/content/Context;

    move-result-object v0

    .line 106167
    .local v0, "context":Landroid/content/Context;
    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 106168
    return v4

    .line 106169
    :cond_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/rF;->A00(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 106170
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/rF;->A0I:[Ljava/lang/String;

    const-string v1, "bz230dZZFwB5VtBTUF6Wd1FYETvWTo5q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "SaD2YYriklneEcKSamPXZGVrEiYqxj4X"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    :goto_0
    return v4
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/rF;)Z
    .locals 0

    .line 106171
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/rF;->A01:Z

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/rF;)Z
    .locals 0

    .line 106172
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/rF;->A0B()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic A0E(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rN;)Lcom/facebook/ads/redexgen/X/qq;
    .locals 1

    .line 106173
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/rF;->A0A(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rN;)V

    .line 106174
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0F()V
    .locals 2

    .line 106175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A00:Lcom/facebook/ads/redexgen/X/rI;

    if-eqz v0, :cond_0

    .line 106176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A00:Lcom/facebook/ads/redexgen/X/rI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/rI;->AFq()V

    .line 106177
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A01:Z

    if-eqz v0, :cond_1

    .line 106178
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A05:Lcom/facebook/ads/redexgen/X/hc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/hc;->ACf()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/rF;->A07(J)V

    .line 106180
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A01:Z

    .line 106181
    return-void
.end method

.method public final A0G()V
    .locals 3

    .line 106182
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A01:Z

    if-nez v0, :cond_0

    .line 106183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A01:Z

    .line 106184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/rF;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106185
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 106186
    const/16 v2, 0xa

    const/4 v1, 0x5

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/rF;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106187
    :cond_0
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/rK;)V
    .locals 1

    .line 106188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rF;->A0B:Lcom/facebook/ads/redexgen/X/Al;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Al;->AJu(Lcom/facebook/ads/redexgen/X/rK;)V

    .line 106189
    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/rI;)V
    .locals 0

    .line 106190
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/rF;->A00:Lcom/facebook/ads/redexgen/X/rI;

    .line 106191
    return-void
.end method
