.class public final Lcom/google/android/gms/internal/ads/zzeuw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfav;


# instance fields
.field public final zza:I

.field public final zzb:Z

.field public final zzc:Z

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:F

.field public final zzj:Z

.field public final zzk:Z


# direct methods
.method public constructor <init>(IZZIIIIIFZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zza:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zze:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzg:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzh:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzi:F

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzj:Z

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzk:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdah;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdah;->zza:Landroid/os/Bundle;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmv:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zze:I

    const-string v1, "muv_min"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzf:I

    const-string v1, "muv_max"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzi:F

    const-string v1, "android_app_volume"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzj:Z

    const-string v1, "android_app_muted"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzk:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zza:I

    const-string v1, "am"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzb:Z

    const-string v1, "ma"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzc:Z

    const-string v1, "sp"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzd:I

    const-string v1, "muv"

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzg:I

    const-string v1, "rm"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeuw;->zzh:I

    const-string v1, "riv"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfav$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzfav;Ljava/lang/Object;)V

    return-void
.end method
