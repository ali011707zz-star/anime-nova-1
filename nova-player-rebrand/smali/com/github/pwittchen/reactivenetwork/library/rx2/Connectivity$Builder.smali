.class public final Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
.super Ljava/lang/Object;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private available:Z

.field private detailedState:Landroid/net/NetworkInfo$DetailedState;

.field private extraInfo:Ljava/lang/String;

.field private failover:Z

.field private reason:Ljava/lang/String;

.field private roaming:Z

.field private state:Landroid/net/NetworkInfo$State;

.field private subType:I

.field private subTypeName:Ljava/lang/String;

.field private type:I

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->state:Landroid/net/NetworkInfo$State;

    .line 291
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->detailedState:Landroid/net/NetworkInfo$DetailedState;

    const/4 v0, -0x1

    .line 292
    iput v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->type:I

    .line 293
    iput v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->subType:I

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->available:Z

    .line 295
    iput-boolean v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->failover:Z

    .line 296
    iput-boolean v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->roaming:Z

    .line 297
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->typeName:Ljava/lang/String;

    .line 298
    iput-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->subTypeName:Ljava/lang/String;

    .line 299
    const-string v0, ""

    iput-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->reason:Ljava/lang/String;

    .line 300
    iput-object v0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->extraInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)Landroid/net/NetworkInfo$State;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->state:Landroid/net/NetworkInfo$State;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->detailedState:Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)Ljava/lang/String;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->extraInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)I
    .locals 0

    .line 285
    iget p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->type:I

    return p0
.end method

.method static synthetic access$300(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)I
    .locals 0

    .line 285
    iget p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->subType:I

    return p0
.end method

.method static synthetic access$400(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)Z
    .locals 0

    .line 285
    iget-boolean p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->available:Z

    return p0
.end method

.method static synthetic access$500(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)Z
    .locals 0

    .line 285
    iget-boolean p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->failover:Z

    return p0
.end method

.method static synthetic access$600(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)Z
    .locals 0

    .line 285
    iget-boolean p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->roaming:Z

    return p0
.end method

.method static synthetic access$700(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)Ljava/lang/String;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)Ljava/lang/String;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->subTypeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;)Ljava/lang/String;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->reason:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public available(Z)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 323
    iput-boolean p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->available:Z

    return-object p0
.end method

.method public build()Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;
    .locals 2

    .line 358
    new-instance v0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity;-><init>(Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$1;)V

    return-object v0
.end method

.method public detailedState(Landroid/net/NetworkInfo$DetailedState;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->detailedState:Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method public extraInfo(Ljava/lang/String;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->extraInfo:Ljava/lang/String;

    return-object p0
.end method

.method public failover(Z)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 328
    iput-boolean p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->failover:Z

    return-object p0
.end method

.method public reason(Ljava/lang/String;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public roaming(Z)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->roaming:Z

    return-object p0
.end method

.method public state(Landroid/net/NetworkInfo$State;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->state:Landroid/net/NetworkInfo$State;

    return-object p0
.end method

.method public subType(I)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 318
    iput p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->subType:I

    return-object p0
.end method

.method public subTypeName(Ljava/lang/String;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->subTypeName:Ljava/lang/String;

    return-object p0
.end method

.method public type(I)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 313
    iput p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->type:I

    return-object p0
.end method

.method public typeName(Ljava/lang/String;)Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/github/pwittchen/reactivenetwork/library/rx2/Connectivity$Builder;->typeName:Ljava/lang/String;

    return-object p0
.end method
