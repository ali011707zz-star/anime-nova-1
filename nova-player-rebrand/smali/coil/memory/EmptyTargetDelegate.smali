.class public final Lcoil/memory/EmptyTargetDelegate;
.super Lcoil/memory/TargetDelegate;
.source "TargetDelegate.kt"


# static fields
.field public static final INSTANCE:Lcoil/memory/EmptyTargetDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/memory/EmptyTargetDelegate;

    invoke-direct {v0}, Lcoil/memory/EmptyTargetDelegate;-><init>()V

    sput-object v0, Lcoil/memory/EmptyTargetDelegate;->INSTANCE:Lcoil/memory/EmptyTargetDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lcoil/memory/TargetDelegate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
