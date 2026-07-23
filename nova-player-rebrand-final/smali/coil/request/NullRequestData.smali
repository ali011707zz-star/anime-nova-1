.class public final Lcoil/request/NullRequestData;
.super Ljava/lang/Object;
.source "NullRequestData.kt"


# static fields
.field public static final INSTANCE:Lcoil/request/NullRequestData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/request/NullRequestData;

    invoke-direct {v0}, Lcoil/request/NullRequestData;-><init>()V

    sput-object v0, Lcoil/request/NullRequestData;->INSTANCE:Lcoil/request/NullRequestData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 9
    const-string v0, "coil.request.NullRequestData"

    return-object v0
.end method
