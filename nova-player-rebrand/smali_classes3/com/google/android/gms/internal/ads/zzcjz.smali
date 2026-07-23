.class final synthetic Lcom/google/android/gms/internal/ads/zzcjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyv;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzazh;

.field private final synthetic zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final synthetic zzd:Lcom/google/android/gms/ads/internal/zza;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzejf;

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfjo;

.field private final synthetic zzg:Lcom/google/android/gms/internal/ads/zzdxz;

.field private final synthetic zzh:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzfjo;Lcom/google/android/gms/internal/ads/zzdxz;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zzb:Lcom/google/android/gms/internal/ads/zzazh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zzd:Lcom/google/android/gms/ads/internal/zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zze:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zzf:Lcom/google/android/gms/internal/ads/zzfjo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zzg:Lcom/google/android/gms/internal/ads/zzdxz;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcjz;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzd()Lcom/google/android/gms/internal/ads/zzckb;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjz;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzclv;->zzb()Lcom/google/android/gms/internal/ads/zzclv;

    move-result-object v2

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzcjz;->zzd:Lcom/google/android/gms/ads/internal/zza;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgd;->zza()Lcom/google/android/gms/internal/ads/zzbgd;

    move-result-object v12

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzcjz;->zze:Lcom/google/android/gms/internal/ads/zzejf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcjz;->zzf:Lcom/google/android/gms/internal/ads/zzfjo;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcjz;->zzg:Lcom/google/android/gms/internal/ads/zzdxz;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcjz;->zzc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcjz;->zzb:Lcom/google/android/gms/internal/ads/zzazh;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v3

    .line 3
    const-string v3, ""

    move-object/from16 v17, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzckb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzclv;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbil;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbgd;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzfjo;Lcom/google/android/gms/internal/ads/zzdxz;)Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcem;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcem;

    move-result-object v2

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzP()Lcom/google/android/gms/internal/ads/zzclj;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcjy;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzcjy;-><init>(Lcom/google/android/gms/internal/ads/zzcem;)V

    .line 6
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzclj;->zzG(Lcom/google/android/gms/internal/ads/zzclh;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcjz;->zzh:Ljava/lang/String;

    .line 7
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzcjl;->loadUrl(Ljava/lang/String;)V

    return-object v2
.end method
