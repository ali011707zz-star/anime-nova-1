.class final Lcom/google/android/gms/internal/ads/zzidq;
.super Lcom/google/android/gms/internal/ads/zziag;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzids;

.field zzb:Lcom/google/android/gms/internal/ads/zziai;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzidt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzidt;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzidq;->zzc:Lcom/google/android/gms/internal/ads/zzidt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziag;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Lcom/google/android/gms/internal/ads/zzian;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzidq;->zza:Lcom/google/android/gms/internal/ads/zzids;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidq;->zzb()Lcom/google/android/gms/internal/ads/zziai;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzidq;->zzb:Lcom/google/android/gms/internal/ads/zziai;

    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/ads/zziai;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidq;->zza:Lcom/google/android/gms/internal/ads/zzids;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzids;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzids;->zza()Lcom/google/android/gms/internal/ads/zziak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzian;->zzr()Lcom/google/android/gms/internal/ads/zziai;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidq;->zzb:Lcom/google/android/gms/internal/ads/zziai;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidq;->zzb:Lcom/google/android/gms/internal/ads/zziai;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziai;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzidq;->zzb:Lcom/google/android/gms/internal/ads/zziai;

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidq;->zzb()Lcom/google/android/gms/internal/ads/zziai;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzidq;->zzb:Lcom/google/android/gms/internal/ads/zziai;

    :cond_0
    return v0

    .line 1
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
