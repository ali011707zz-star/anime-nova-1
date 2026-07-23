.class public final Lcom/google/android/gms/internal/ads/zzezl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfav;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/Integer;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezl;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezl;->zzb:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzezl;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzezl;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzezl;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzezl;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdah;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdah;->zza:Landroid/os/Bundle;

    const-string v0, "pn"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezl;->zza:Ljava/lang/String;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjz;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vc"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezl;->zzb:Ljava/lang/Integer;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjz;->zzh(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "vnm"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezl;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjz;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dl"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezl;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjz;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ins_pn"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezl;->zze:Ljava/lang/String;

    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjz;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ini_pn"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezl;->zzf:Ljava/lang/String;

    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjz;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdah;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdah;->zzb:Landroid/os/Bundle;

    const-string v0, "pn"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezl;->zza:Ljava/lang/String;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjz;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dl"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezl;->zzd:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjz;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
