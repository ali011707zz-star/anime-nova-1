.class public final Lcom/google/android/gms/internal/ads/zzhbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhbb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhbp;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhbe;

.field private zze:Lcom/google/android/gms/internal/ads/zzhbf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhbp;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhbb;->zza:Lcom/google/android/gms/internal/ads/zzhbb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zzb:Lcom/google/android/gms/internal/ads/zzhbb;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zzd:Lcom/google/android/gms/internal/ads/zzhbe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zze:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zzc:Lcom/google/android/gms/internal/ads/zzhbp;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzhbd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zze:Lcom/google/android/gms/internal/ads/zzhbf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbf;->zzc()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zza:Z

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhbd;
    .locals 1

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbe;->zza()Lcom/google/android/gms/internal/ads/zzhbe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zzd:Lcom/google/android/gms/internal/ads/zzhbe;

    return-object p0
.end method

.method final synthetic zzc()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zza:Z

    return v0
.end method

.method final synthetic zzd(Z)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zza:Z

    return-void
.end method

.method final synthetic zze()Lcom/google/android/gms/internal/ads/zzhbb;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zzb:Lcom/google/android/gms/internal/ads/zzhbb;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzhbp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zzc:Lcom/google/android/gms/internal/ads/zzhbp;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzhbe;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zzd:Lcom/google/android/gms/internal/ads/zzhbe;

    return-object v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzhbf;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zze:Lcom/google/android/gms/internal/ads/zzhbf;

    return-object v0
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzhbf;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhbd;->zze:Lcom/google/android/gms/internal/ads/zzhbf;

    return-void
.end method
