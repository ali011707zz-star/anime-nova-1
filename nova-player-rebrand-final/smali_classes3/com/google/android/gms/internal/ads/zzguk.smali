.class final Lcom/google/android/gms/internal/ads/zzguk;
.super Lcom/google/android/gms/internal/ads/zzgwt;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final zza:Ljava/util/Iterator;

.field zzb:Ljava/util/Iterator;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgun;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgun;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzguk;->zzc:Lcom/google/android/gms/internal/ads/zzgun;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwt;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgun;->map:Lcom/google/android/gms/internal/ads/zzgui;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzh()Lcom/google/android/gms/internal/ads/zzgub;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzguf;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzguf;->zzu(I)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzguk;->zza:Ljava/util/Iterator;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzguv;->zza:Lcom/google/android/gms/internal/ads/zzgwu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzguk;->zzb:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguk;->zzb:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguk;->zza:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguk;->zzb:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguk;->zza:Ljava/util/Iterator;

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgub;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgub;->zza()Lcom/google/android/gms/internal/ads/zzgwt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzguk;->zzb:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguk;->zzb:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
