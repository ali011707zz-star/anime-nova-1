.class public abstract Lcom/google/android/gms/internal/ads/zzaaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzaai;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaas;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Lcom/google/android/gms/internal/ads/zzaai;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzb:Lcom/google/android/gms/internal/ads/zzaas;

    return-void
.end method

.method public abstract zzd()Z
.end method

.method public abstract zze(Lcom/google/android/gms/internal/ads/zzd;)V
.end method

.method public abstract zzg()Lcom/google/android/gms/internal/ads/zzmm;
.end method

.method public abstract zzp(Ljava/lang/Object;)V
.end method

.method public abstract zzq([Lcom/google/android/gms/internal/ads/zzmn;Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzaak;
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzaai;Lcom/google/android/gms/internal/ads/zzaas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Lcom/google/android/gms/internal/ads/zzaai;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Lcom/google/android/gms/internal/ads/zzaai;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzb:Lcom/google/android/gms/internal/ads/zzaas;

    return-void
.end method

.method protected final zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Lcom/google/android/gms/internal/ads/zzaai;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaai;->zzq()V

    :cond_0
    return-void
.end method

.method protected final zzt()Lcom/google/android/gms/internal/ads/zzaas;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzb:Lcom/google/android/gms/internal/ads/zzaas;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method
