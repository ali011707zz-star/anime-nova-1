.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.super Lcom/google/ads/interactivemedia/v3/internal/zzabg;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/ads/interactivemedia/v3/internal/zzacs<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/ads/interactivemedia/v3/internal/zzaco<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/ads/interactivemedia/v3/internal/zzabg<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzd:Ljava/util/Map;


# instance fields
.field private zzb:I

.field protected zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaey;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzaey;

    return-void
.end method

.method private final zza(Lcom/google/ads/interactivemedia/v3/internal/zzaem;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object p1

    .line 1
    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zze(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static zzaC(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzafe;->zzc(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v2, v3, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    return-object v1
.end method

.method protected static zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzat()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static zzaE(Lcom/google/ads/interactivemedia/v3/internal/zzadx;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaeg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaeg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzadx;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zzaF(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzaG()Lcom/google/ads/interactivemedia/v3/internal/zzacy;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzact;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzact;

    move-result-object v0

    return-object v0
.end method

.method protected static zzaH()Lcom/google/ads/interactivemedia/v3/internal/zzada;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaef;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzaef;

    move-result-object v0

    return-object v0
.end method

.method protected static zzaI(Lcom/google/ads/interactivemedia/v3/internal/zzada;)Lcom/google/ads/interactivemedia/v3/internal/zzada;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzada;->zzg(I)Lcom/google/ads/interactivemedia/v3/internal/zzada;

    move-result-object p0

    return-object p0
.end method

.method protected static zzaJ(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 2
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzabi;->$r8$clinit:I

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzl()Lcom/google/ads/interactivemedia/v3/internal/zzabv;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzau()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v1

    .line 7
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabw;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabv;)Lcom/google/ads/interactivemedia/v3/internal/zzabw;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzg(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaeh;Lcom/google/ads/interactivemedia/v3/internal/zzace;)V

    .line 8
    invoke-interface {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzk(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzaew; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabv;->zzb(I)V

    .line 19
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    .line 20
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    throw p0

    .line 11
    :cond_0
    throw p0

    :catch_1
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    throw p0

    .line 18
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    .line 14
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadd;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 15
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaew;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    .line 16
    throw p0
.end method

.method protected static zzaK(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzl()Lcom/google/ads/interactivemedia/v3/internal/zzabv;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzau()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabw;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabv;)Lcom/google/ads/interactivemedia/v3/internal/zzabw;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzg(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzaeh;Lcom/google/ads/interactivemedia/v3/internal/zzace;)V

    .line 6
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzk(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzaew; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabv;->zzb(I)V

    .line 17
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    throw p0

    .line 9
    :cond_0
    throw p0

    :catch_1
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    throw p0

    .line 16
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    .line 12
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadd;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 13
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaew;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    .line 14
    throw p0
.end method

.method protected static zzaL(Lcom/google/ads/interactivemedia/v3/internal/zzacs;[BLcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;
    .locals 2

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzacs;[BIILcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p0

    .line 1
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    return-object p0
.end method

.method static synthetic zzaN(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Z)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Z)Z

    move-result p0

    return p0
.end method

.method private static final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    return v0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v2

    .line 2
    invoke-interface {v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_3

    if-eq v0, v2, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v2
.end method

.method private static zzc(Lcom/google/ads/interactivemedia/v3/internal/zzacs;[BIILcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;
    .locals 6

    if-nez p3, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzau()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object p0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v0

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzabj;

    .line 4
    invoke-direct {v5, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzabj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzace;)V

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzj(Ljava/lang/Object;[BIILcom/google/ads/interactivemedia/v3/internal/zzabj;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzk(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzaew; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 9
    :catch_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 6
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzadd;-><init>(Ljava/lang/String;)V

    .line 7
    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    throw p0

    .line 11
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    .line 10
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzadd;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 11
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaew;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    move-result-object p0

    throw p0

    :catch_3
    move-exception v0

    move-object p0, v0

    .line 12
    throw p0
.end method

.method private static zzd(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaew;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaew;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzadx;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaew;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzadd;

    move-result-object p0

    .line 4
    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v0

    .line 1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    invoke-interface {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzas()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zza:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzav()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zza:I

    :cond_0
    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzav()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadz;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzadx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzaA(Lcom/google/ads/interactivemedia/v3/internal/zzabz;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabz;)Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzf(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzafk;)V

    return-void
.end method

.method public final zzaB()I
    .locals 5

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzas()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzaem;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2

    return v0

    .line 1
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzaem;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 2
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    return v0

    .line 1
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final synthetic zzaM()Lcom/google/ads/interactivemedia/v3/internal/zzadw;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    return-object v0
.end method

.method public final zzaP()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic zzap()Lcom/google/ads/interactivemedia/v3/internal/zzadx;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    return-object v0
.end method

.method final zzar(Lcom/google/ads/interactivemedia/v3/internal/zzaem;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzas()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zze(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 3
    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zze(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    return p1

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return v0
.end method

.method final zzas()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final zzat()V
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    return-void
.end method

.method final zzau()Lcom/google/ads/interactivemedia/v3/internal/zzacs;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    return-object v0
.end method

.method final zzav()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzc(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final zzaw()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzaee;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaee;->zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaem;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaem;->zzk(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzat()V

    return-void
.end method

.method protected final zzax()Lcom/google/ads/interactivemedia/v3/internal/zzaco;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    return-object v0
.end method

.method public final zzay()Lcom/google/ads/interactivemedia/v3/internal/zzaco;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzam(Lcom/google/ads/interactivemedia/v3/internal/zzacs;)Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    return-object v0
.end method

.method final zzaz(I)V
    .locals 1

    .line 0
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    const v0, 0x7fffffff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzb:I

    return-void
.end method

.method protected abstract zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
