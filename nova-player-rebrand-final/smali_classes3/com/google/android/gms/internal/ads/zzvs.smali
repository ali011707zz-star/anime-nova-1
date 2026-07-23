.class public abstract Lcom/google/android/gms/internal/ads/zzvs;
.super Lcom/google/android/gms/internal/ads/zzvj;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/HashMap;

.field private zzb:Landroid/os/Handler;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhz;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvj;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected final zzM()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvr;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvr;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvr;->zzb:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzwm;->zzq(Lcom/google/android/gms/internal/ads/zzwl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzhz;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Landroid/os/Handler;

    return-void
.end method

.method protected final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvr;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvr;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvr;->zzb:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzwm;->zzr(Lcom/google/android/gms/internal/ads/zzwl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zzd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvr;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzvr;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzvr;->zzb:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzwm;->zzs(Lcom/google/android/gms/internal/ads/zzwl;)V

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvr;->zzc:Lcom/google/android/gms/internal/ads/zzvq;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzwm;->zzm(Lcom/google/android/gms/internal/ads/zzwv;)V

    .line 4
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzwm;->zzo(Lcom/google/android/gms/internal/ads/zztk;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public zzt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvr;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvr;->zza:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzwm;->zzt()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract zzu(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwm;Lcom/google/android/gms/internal/ads/zzbf;)V
.end method

.method protected final zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwm;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzvp;-><init>(Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzvq;

    .line 2
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzvq;-><init>(Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzvr;

    invoke-direct {v3, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzvr;-><init>(Lcom/google/android/gms/internal/ads/zzwm;Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzvq;)V

    .line 3
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Landroid/os/Handler;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzwm;->zzl(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzwv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzwm;->zzn(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zztk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Lcom/google/android/gms/internal/ads/zzhz;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvj;->zzk()Lcom/google/android/gms/internal/ads/zzpq;

    move-result-object v0

    invoke-interface {p2, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzwm;->zzp(Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzhz;Lcom/google/android/gms/internal/ads/zzpq;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvj;->zzj()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzwm;->zzr(Lcom/google/android/gms/internal/ads/zzwl;)V

    :cond_0
    return-void
.end method

.method protected zzw(Ljava/lang/Object;I)I
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zzx(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzwk;
.end method

.method protected zzy(Ljava/lang/Object;JLcom/google/android/gms/internal/ads/zzwk;)J
    .locals 0

    .line 0
    return-wide p2
.end method
