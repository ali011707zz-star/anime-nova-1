.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzxs;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzxs;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "newInstance"

    const-class v1, Ljava/io/ObjectStreamClass;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    const-string v6, "sun.misc.Unsafe"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "theUnsafe"

    .line 2
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3
    invoke-virtual {v7, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "allocateInstance"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v2, v9, v3

    .line 5
    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 6
    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/zzxo;

    invoke-direct {v8, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzxo;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v6, 0x2

    :try_start_1
    const-string v7, "getConstructorId"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v2, v8, v3

    .line 7
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 8
    invoke-virtual {v7, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v8, v5, [Ljava/lang/Object;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v3

    .line 9
    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v2, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    .line 10
    invoke-virtual {v1, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 12
    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/zzxp;

    invoke-direct {v8, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzxp;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :try_start_2
    const-class v1, Ljava/io/ObjectInputStream;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v2, v4, v3

    aput-object v2, v4, v5

    .line 13
    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 15
    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/zzxq;

    invoke-direct {v8, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzxq;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 16
    :catch_2
    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/zzxr;

    invoke-direct {v8}, Lcom/google/ads/interactivemedia/v3/internal/zzxr;-><init>()V

    .line 6
    :goto_0
    sput-object v8, Lcom/google/ads/interactivemedia/v3/internal/zzxs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzxs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zzb(Ljava/lang/Class;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwn;->zza(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "UnsafeAllocator is used for non-instantiable type: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Class;)Ljava/lang/Object;
.end method
