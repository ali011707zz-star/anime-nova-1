.class final Lcom/google/android/gms/internal/ads/zzgwj;
.super Lcom/google/android/gms/internal/ads/zzgsd;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final zza:Ljava/util/Iterator;

.field final synthetic zzb:Ljava/util/Set;

.field final synthetic zzc:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgwk;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwj;->zzb:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgwj;->zzc:Ljava/util/Set;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgsd;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwj;->zza:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwj;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwj;->zzc:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsd;->zzb()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
