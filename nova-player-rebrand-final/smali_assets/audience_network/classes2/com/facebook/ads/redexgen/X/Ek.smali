.class public Lcom/facebook/ads/redexgen/X/Ek;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fn;
.implements Lcom/facebook/ads/redexgen/X/ei;


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/E9;

.field public static final A0I:Lcom/facebook/ads/redexgen/X/E3;

.field public static final A0J:Lcom/facebook/ads/redexgen/X/E1;

.field public static final A0K:Lcom/facebook/ads/redexgen/X/Dw;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/Dv;

.field public static final A0M:Lcom/facebook/ads/redexgen/X/Ds;

.field public static final A0N:Lcom/facebook/ads/redexgen/X/Dq;

.field public static final A0O:Lcom/facebook/ads/redexgen/X/Dp;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/VI;

.field public A03:Lcom/facebook/ads/redexgen/X/eq;

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/os/Handler;

.field public final A09:Landroid/os/Handler;

.field public final A0A:Landroid/view/View$OnTouchListener;

.field public final A0B:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0C:Lcom/facebook/ads/redexgen/X/UM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/UM<",
            "Lcom/facebook/ads/redexgen/X/UN;",
            "Lcom/facebook/ads/redexgen/X/UL;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/eu;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Lcom/facebook/ads/redexgen/X/fk;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 711
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3L6CoO6YtrcW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MjcsiBOYcGfrGyZBxeZgAjKXsDYhFJK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NbVxNqWnj3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ob7MM92eIAC3XgmL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XSQst8sM3v9Waw60ED5t21eOsn1IQUtw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wvdS5a619fbySZdqvbmzcB7w"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WLvo7626w9dzVwCTBg7InBeeg1a7HKE3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kYDrs41aRZaYTR0SA8npQuCfjZz7Tio6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ek;->A0J()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/E1;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0J:Lcom/facebook/ads/redexgen/X/E1;

    .line 712
    new-instance v0, Lcom/facebook/ads/redexgen/X/E9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/E9;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0H:Lcom/facebook/ads/redexgen/X/E9;

    .line 713
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Dw;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0K:Lcom/facebook/ads/redexgen/X/Dw;

    .line 714
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Dv;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0L:Lcom/facebook/ads/redexgen/X/Dv;

    .line 715
    new-instance v0, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/E3;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0I:Lcom/facebook/ads/redexgen/X/E3;

    .line 716
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ds;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ds;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0M:Lcom/facebook/ads/redexgen/X/Ds;

    .line 717
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dp;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Dp;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0O:Lcom/facebook/ads/redexgen/X/Dp;

    .line 718
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Dq;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0N:Lcom/facebook/ads/redexgen/X/Dq;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;)V
    .locals 1

    .line 34870
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0D:Ljava/util/List;

    .line 34872
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A08:Landroid/os/Handler;

    .line 34873
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A09:Landroid/os/Handler;

    .line 34874
    new-instance v0, Lcom/facebook/ads/redexgen/X/UM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/UM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0C:Lcom/facebook/ads/redexgen/X/UM;

    .line 34875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A06:Z

    .line 34876
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A01:I

    .line 34877
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A00:F

    .line 34878
    new-instance v0, Lcom/facebook/ads/redexgen/X/eh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eh;-><init>(Lcom/facebook/ads/redexgen/X/Ek;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0A:Landroid/view/View$OnTouchListener;

    .line 34879
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 34880
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->A0T(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34881
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cz;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Cz;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    .line 34882
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ek;->A0H()V

    .line 34883
    return-void

    .line 34884
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cy;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Cy;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34885
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0D:Ljava/util/List;

    .line 34887
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A08:Landroid/os/Handler;

    .line 34888
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A09:Landroid/os/Handler;

    .line 34889
    new-instance v0, Lcom/facebook/ads/redexgen/X/UM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/UM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0C:Lcom/facebook/ads/redexgen/X/UM;

    .line 34890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A06:Z

    .line 34891
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A01:I

    .line 34892
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A00:F

    .line 34893
    new-instance v0, Lcom/facebook/ads/redexgen/X/eh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eh;-><init>(Lcom/facebook/ads/redexgen/X/Ek;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0A:Landroid/view/View$OnTouchListener;

    .line 34894
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 34895
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->A0T(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34896
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cz;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cz;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    .line 34897
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ek;->A0H()V

    .line 34898
    return-void

    .line 34899
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cy;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cy;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 34900
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34901
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0D:Ljava/util/List;

    .line 34902
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A08:Landroid/os/Handler;

    .line 34903
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A09:Landroid/os/Handler;

    .line 34904
    new-instance v0, Lcom/facebook/ads/redexgen/X/UM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/UM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0C:Lcom/facebook/ads/redexgen/X/UM;

    .line 34905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A06:Z

    .line 34906
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A01:I

    .line 34907
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A00:F

    .line 34908
    new-instance v0, Lcom/facebook/ads/redexgen/X/eh;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eh;-><init>(Lcom/facebook/ads/redexgen/X/Ek;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0A:Landroid/view/View$OnTouchListener;

    .line 34909
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 34910
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->A0T(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34911
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cz;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cz;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    .line 34912
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ek;->A0H()V

    .line 34913
    return-void

    .line 34914
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cy;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cy;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    goto :goto_0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/fk;)F
    .locals 3

    .line 34915
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/fk;->getVideoHeight()I

    move-result v2

    .line 34916
    .local v0, "height":I
    if-nez v2, :cond_0

    .line 34917
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 34918
    :cond_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/fk;->getVideoWidth()I

    move-result v0

    .line 34919
    .local v1, "width":I
    int-to-float v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Ek;)I
    .locals 0

    .line 34920
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A01:I

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Ek;)Landroid/os/Handler;
    .locals 0

    .line 34921
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A08:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 34922
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Ek;)Lcom/facebook/ads/redexgen/X/UM;
    .locals 0

    .line 34923
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0C:Lcom/facebook/ads/redexgen/X/UM;

    return-object p0
.end method

.method public static synthetic A0B()Lcom/facebook/ads/redexgen/X/E9;
    .locals 1

    .line 34924
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0H:Lcom/facebook/ads/redexgen/X/E9;

    return-object v0
.end method

.method public static synthetic A0C()Lcom/facebook/ads/redexgen/X/E3;
    .locals 1

    .line 34925
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0I:Lcom/facebook/ads/redexgen/X/E3;

    return-object v0
.end method

.method public static synthetic A0D()Lcom/facebook/ads/redexgen/X/E1;
    .locals 1

    .line 34926
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0J:Lcom/facebook/ads/redexgen/X/E1;

    return-object v0
.end method

.method public static synthetic A0E()Lcom/facebook/ads/redexgen/X/Dw;
    .locals 4

    .line 34927
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ek;->A0K:Lcom/facebook/ads/redexgen/X/Dw;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const-string v1, "Ykw7x5qbt5Y8x48JghoZKWeO"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "cKnPTPxPmv7r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0F()Lcom/facebook/ads/redexgen/X/Dv;
    .locals 1

    .line 34928
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0L:Lcom/facebook/ads/redexgen/X/Dv;

    return-object v0
.end method

.method public static A0G(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ek;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const-string v1, "HxnswxUpcuHv1wuLD4berTHtADZcXTin"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "I3xDTi7RY5fAtwEllKfD6KKH3DCBcY9z"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0H()V
    .locals 3

    .line 34929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0t(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A07:Z

    .line 34930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3d()V

    .line 34931
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/fk;->setRequestedVolume(F)V

    .line 34932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/fk;->setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/fn;)V

    .line 34933
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    new-instance v0, Lcom/facebook/ads/redexgen/X/eq;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/eq;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/fk;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/eq;

    .line 34934
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34935
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/eq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 34937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/eq;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ek;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0A:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34939
    return-void
.end method

.method private A0I()V
    .locals 4

    .line 34940
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ek;->A08:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Es;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Es;-><init>(Lcom/facebook/ads/redexgen/X/Ek;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A01:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34941
    return-void
.end method

.method public static A0J()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x5dt
        -0x50t
        -0x5et
        -0x60t
        0x5dt
        -0x4ft
        -0x54t
        -0x4ft
        -0x62t
        -0x57t
        0x5dt
        -0x4ct
        -0x62t
        -0x4ft
        -0x60t
        -0x5bt
        0x5dt
        -0x4ft
        -0x5at
        -0x56t
        -0x5et
        0x7dt
        -0x51t
        -0x54t
        -0x54t
        -0x61t
        -0x58t
        -0x52t
        -0x5at
        -0x4dt
        0x5at
        -0x65t
        -0x52t
        0x5at
    .end array-data
.end method

.method private final A0K()V
    .locals 6

    .line 34942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/eu;

    .line 34943
    .local v1, "plugin":Lcom/facebook/ads/redexgen/X/eu;
    instance-of v3, v4, Lcom/facebook/ads/redexgen/X/ED;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const-string v1, "f6iKlyOeYddBSkQQnaXOCc7KzH8j"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 34944
    move-object v0, v4

    check-cast v0, Lcom/facebook/ads/redexgen/X/ED;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0R(Lcom/facebook/ads/redexgen/X/ED;)V

    .line 34945
    :cond_1
    invoke-interface {v4, p0}, Lcom/facebook/ads/redexgen/X/eu;->AAv(Lcom/facebook/ads/redexgen/X/Ek;)V

    .line 34946
    .end local v1    # "plugin":Lcom/facebook/ads/redexgen/X/eu;
    goto :goto_0

    .line 34947
    :cond_2
    return-void
.end method

.method private A0L(I)V
    .locals 6

    .line 34948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A10(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34949
    int-to-float v5, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v5, v0

    .line 34950
    .local v0, "sec":F
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v1, 0xd

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v4, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 34951
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 34952
    .end local v0    # "sec":F
    :cond_0
    return-void
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/VH;)V
    .locals 2

    .line 34953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A02:Lcom/facebook/ads/redexgen/X/VI;

    if-nez v0, :cond_0

    .line 34954
    return-void

    .line 34955
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A02:Lcom/facebook/ads/redexgen/X/VI;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 34956
    return-void
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 0

    .line 34957
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ek;->A0I()V

    return-void
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/Ek;I)V
    .locals 0

    .line 34958
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->A0L(I)V

    return-void
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/VH;)V
    .locals 0

    .line 34959
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->A0M(Lcom/facebook/ads/redexgen/X/VH;)V

    return-void
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/eu;)V
    .locals 1

    .line 34960
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v0, :cond_0

    .line 34961
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/ED;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0S(Lcom/facebook/ads/redexgen/X/ED;)V

    .line 34962
    :cond_0
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/eu;->AKV(Lcom/facebook/ads/redexgen/X/Ek;)V

    .line 34963
    return-void
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/ED;)V
    .locals 1

    .line 34964
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34965
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/3S;

    if-eqz v0, :cond_1

    .line 34966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/eq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/eq;->A02(Lcom/facebook/ads/redexgen/X/ED;)V

    .line 34967
    :cond_0
    :goto_0
    return-void

    .line 34968
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/ED;)V
    .locals 1

    .line 34969
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/3S;

    if-eqz v0, :cond_0

    .line 34970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/eq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/eq;->A03(Lcom/facebook/ads/redexgen/X/ED;)V

    .line 34971
    :goto_0
    return-void

    .line 34972
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/gi;)Z
    .locals 1

    .line 34973
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fX;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Up;->A31(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/Ek;)Z
    .locals 0

    .line 34974
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A04:Z

    return p0
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/Ek;Z)Z
    .locals 0

    .line 34975
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A04:Z

    return p1
.end method


# virtual methods
.method public final A0W()V
    .locals 2

    .line 34976
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/fk;->setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/fn;)V

    .line 34977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->destroy()V

    .line 34978
    return-void
.end method

.method public final A0X()V
    .locals 1

    .line 34979
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ek;->A0n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34980
    return-void

    .line 34981
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->A9d()V

    .line 34982
    return-void
.end method

.method public final A0Y()V
    .locals 2

    .line 34983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/eu;

    .line 34984
    .local v1, "plugin":Lcom/facebook/ads/redexgen/X/eu;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0Q(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 34985
    .end local v1    # "plugin":Lcom/facebook/ads/redexgen/X/eu;
    goto :goto_0

    .line 34986
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34987
    return-void
.end method

.method public final A0Z(I)V
    .locals 6

    .line 34988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eq;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34989
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 34990
    const/16 v3, 0xa

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 34991
    const/16 v2, 0x9

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 34992
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A00:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    .line 34993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A06(Lcom/facebook/ads/redexgen/X/fk;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A00:F

    .line 34994
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 34995
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34996
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/eq;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const-string v1, "Fk13SNDKaQVX0dV87s1e6TAwbDOb9nQX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/eq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34997
    return-void

    .line 34998
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A00:F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A05(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34999
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 35000
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0a(I)V
    .locals 2

    .line 35001
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A08:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/fk;->seekTo(I)V

    .line 35003
    return-void
.end method

.method public final A0b(I)V
    .locals 1

    .line 35004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/fk;->AKF(I)V

    .line 35005
    return-void
.end method

.method public final A0c(Landroid/animation/AnimatorSet;Z)V
    .locals 1

    .line 35006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/eq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/eq;->A01(Landroid/animation/AnimatorSet;Z)V

    .line 35007
    return-void
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/el;)V
    .locals 2

    .line 35008
    new-instance v1, Lcom/facebook/ads/redexgen/X/En;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/En;-><init>(Lcom/facebook/ads/redexgen/X/Ek;)V

    .line 35009
    .local v0, "skipRunnable":Lcom/facebook/ads/redexgen/X/Wc;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A07:Z

    if-eqz v0, :cond_0

    .line 35010
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Ljava/lang/Runnable;)V

    .line 35011
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/el;->A03()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/fk;->AK1(I)V

    .line 35012
    return-void

    .line 35013
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A09:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/et;I)V
    .locals 3

    .line 35014
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A04:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_0

    .line 35015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A04:Z

    .line 35016
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/fk;->AK6(Lcom/facebook/ads/redexgen/X/et;I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    .line 35017
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const-string v1, "hMpnI8E"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0f(Lcom/facebook/ads/redexgen/X/eu;)V
    .locals 1

    .line 35018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35019
    return-void
.end method

.method public final A0g(Lcom/facebook/ads/redexgen/X/eu;)V
    .locals 1

    .line 35020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35021
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ek;->A0Q(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 35022
    return-void
.end method

.method public final A0h(Z)V
    .locals 1

    .line 35023
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0i(ZI)V

    .line 35024
    return-void
.end method

.method public final A0i(ZI)V
    .locals 1

    .line 35025
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ek;->A0n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35026
    return-void

    .line 35027
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/fk;->AGr(ZI)V

    .line 35028
    return-void
.end method

.method public final A0j(ZZI)V
    .locals 0

    .line 35029
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Ek;->A06:Z

    .line 35030
    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Ek;->A0i(ZI)V

    .line 35031
    return-void
.end method

.method public final A0k()Z
    .locals 1

    .line 35032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->A9q()Z

    move-result v0

    return v0
.end method

.method public final A0l()Z
    .locals 1

    .line 35033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->A9r()Z

    move-result v0

    return v0
.end method

.method public final A0m()Z
    .locals 2

    .line 35034
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ek;->getVolume()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0n()Z
    .locals 2

    .line 35035
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A05:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0o()Z
    .locals 1

    .line 35036
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ek;->A0n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->AAc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0p()Z
    .locals 2

    .line 35037
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A0A:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0q()Z
    .locals 1

    .line 35038
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A07:Z

    return v0
.end method

.method public final AAQ()Z
    .locals 1

    .line 35039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0T(Lcom/facebook/ads/redexgen/X/gi;)Z

    move-result v0

    return v0
.end method

.method public final AAV()Z
    .locals 1

    .line 35040
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A05:Z

    return v0
.end method

.method public final ADy(JJJF)V
    .locals 9

    .line 35041
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35042
    return-void

    .line 35043
    :cond_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ek;->A0C:Lcom/facebook/ads/redexgen/X/UM;

    new-instance v1, Lcom/facebook/ads/redexgen/X/4F;

    move/from16 v8, p7

    move-wide v6, p5

    move-wide v4, p3

    move-wide v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/4F;-><init>(JJJF)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35044
    return-void
.end method

.method public final AEo()V
    .locals 2

    .line 35045
    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0i(ZI)V

    .line 35046
    return-void
.end method

.method public final AEp()V
    .locals 2

    .line 35047
    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A04:Lcom/facebook/ads/redexgen/X/et;

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 35048
    return-void
.end method

.method public final AFr(II)V
    .locals 3

    .line 35049
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ep;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ep;-><init>(Lcom/facebook/ads/redexgen/X/Ek;II)V

    .line 35050
    .local v0, "seekRunnable":Lcom/facebook/ads/redexgen/X/Wc;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A07:Z

    if-eqz v0, :cond_0

    .line 35051
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Ljava/lang/Runnable;)V

    .line 35052
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ek;->A0I()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    .line 35053
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const-string v1, "9p5A7Zams3NJ3CBp1FBA5yfXzv5AdeGa"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    .line 35054
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A09:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AGd(Lcom/facebook/ads/redexgen/X/fm;)V
    .locals 3

    .line 35055
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ek;->getCurrentPositionInMillis()I

    move-result v2

    .line 35056
    .local v0, "currentPositionMS":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v0

    .line 35057
    .local v1, "duration":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/Er;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/Er;-><init>(Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/fm;II)V

    .line 35058
    .local v2, "stateRunnable":Lcom/facebook/ads/redexgen/X/Wc;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A07:Z

    if-eqz v0, :cond_0

    .line 35059
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Y4;->A00(Ljava/lang/Runnable;)V

    .line 35060
    :goto_0
    return-void

    .line 35061
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A09:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getCurrentPositionInMillis()I
    .locals 1

    .line 35062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 35063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->getDuration()I

    move-result v0

    return v0
.end method

.method public getEventBus()Lcom/facebook/ads/redexgen/X/UM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/UM<",
            "Lcom/facebook/ads/redexgen/X/UN;",
            "Lcom/facebook/ads/redexgen/X/UL;",
            ">;"
        }
    .end annotation

    .line 35064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0C:Lcom/facebook/ads/redexgen/X/UM;

    return-object v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 35065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->getInitialBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/eu;",
            ">;"
        }
    .end annotation

    .line 35066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0D:Ljava/util/List;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/fm;
    .locals 1

    .line 35067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v0

    return-object v0
.end method

.method public getStateHandler()Landroid/os/Handler;
    .locals 1

    .line 35068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A09:Landroid/os/Handler;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 35069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    check-cast v0, Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 35070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoImplView()Landroid/view/View;
    .locals 1

    .line 35071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVideoProgressReportIntervalMs()I
    .locals 1

    .line 35072
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A01:I

    return v0
.end method

.method public getVideoStartReason()Lcom/facebook/ads/redexgen/X/et;
    .locals 1

    .line 35073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->getStartReason()Lcom/facebook/ads/redexgen/X/et;

    move-result-object v0

    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    .line 35074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/eq;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 35075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 35076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fk;->getVolume()F

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 35077
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0C:Lcom/facebook/ads/redexgen/X/UM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0N:Lcom/facebook/ads/redexgen/X/Dq;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35078
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 35079
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 35080
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0C:Lcom/facebook/ads/redexgen/X/UM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0O:Lcom/facebook/ads/redexgen/X/Dp;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35081
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 35082
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 35083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    if-eqz v0, :cond_0

    .line 35084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/fk;->setControlsAnchorView(Landroid/view/View;)V

    .line 35085
    :cond_0
    return-void
.end method

.method public setFunnelLoggingHandler(Lcom/facebook/ads/redexgen/X/VI;)V
    .locals 0

    .line 35086
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A02:Lcom/facebook/ads/redexgen/X/VI;

    .line 35087
    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 1

    .line 35088
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A05:Z

    .line 35089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/fk;->setFullScreen(Z)V

    .line 35090
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 35091
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35092
    return-void
.end method

.method public setRoundedCornerVideoView(F)V
    .locals 1

    .line 35093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A03:Lcom/facebook/ads/redexgen/X/eq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/eq;->setRoundedCornersVideoStyle(F)V

    .line 35094
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1

    .line 35095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/fk;->setVideoMPD(Ljava/lang/String;)V

    .line 35096
    return-void
.end method

.method public setVideoProgressReportIntervalMs(I)V
    .locals 0

    .line 35097
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ek;->A01:I

    .line 35098
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3

    .line 35099
    if-nez p1, :cond_0

    .line 35100
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ek;->A0Y()V

    .line 35101
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A04:Z

    .line 35102
    return-void

    .line 35103
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ek;->A0K()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35104
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ek;->A0G:[Ljava/lang/String;

    const-string v1, "2vtziZXFfU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/fk;->setup(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    .line 35105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->A3k(Ljava/lang/String;)V

    .line 35106
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setVideoURI(Landroid/net/Uri;)V

    .line 35107
    return-void

    .line 35108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 2

    .line 35109
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 35110
    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0n:Lcom/facebook/ads/redexgen/X/VH;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0M(Lcom/facebook/ads/redexgen/X/VH;)V

    .line 35111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3o()V

    .line 35112
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0E:Lcom/facebook/ads/redexgen/X/fk;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/fk;->setRequestedVolume(F)V

    .line 35113
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ek;->A0M:Lcom/facebook/ads/redexgen/X/Ds;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UM;->A02(Lcom/facebook/ads/redexgen/X/UL;)V

    .line 35114
    return-void

    .line 35115
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0m:Lcom/facebook/ads/redexgen/X/VH;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0M(Lcom/facebook/ads/redexgen/X/VH;)V

    .line 35116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ek;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3n()V

    goto :goto_0
.end method
