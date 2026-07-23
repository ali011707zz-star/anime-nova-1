.class public final Lcoil/memory/StrongMemoryCache$Companion;
.super Ljava/lang/Object;
.source "StrongMemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/memory/StrongMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcoil/memory/StrongMemoryCache$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/memory/StrongMemoryCache$Companion;

    invoke-direct {v0}, Lcoil/memory/StrongMemoryCache$Companion;-><init>()V

    sput-object v0, Lcoil/memory/StrongMemoryCache$Companion;->$$INSTANCE:Lcoil/memory/StrongMemoryCache$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;ILcoil/util/Logger;)Lcoil/memory/StrongMemoryCache;
    .locals 1

    const-string v0, "weakMemoryCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceCounter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p3, :cond_0

    .line 28
    new-instance v0, Lcoil/memory/RealStrongMemoryCache;

    invoke-direct {v0, p1, p2, p3, p4}, Lcoil/memory/RealStrongMemoryCache;-><init>(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;ILcoil/util/Logger;)V

    return-object v0

    .line 29
    :cond_0
    instance-of p2, p1, Lcoil/memory/RealWeakMemoryCache;

    if-eqz p2, :cond_1

    new-instance p2, Lcoil/memory/ForwardingStrongMemoryCache;

    invoke-direct {p2, p1}, Lcoil/memory/ForwardingStrongMemoryCache;-><init>(Lcoil/memory/WeakMemoryCache;)V

    return-object p2

    .line 30
    :cond_1
    sget-object p1, Lcoil/memory/EmptyStrongMemoryCache;->INSTANCE:Lcoil/memory/EmptyStrongMemoryCache;

    return-object p1
.end method
