.class public final Lcom/google/android/gms/internal/ads/zzduv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbil;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/ads/internal/zza;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbgd;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdeg;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzejf;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfjo;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdxz;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzclk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzckb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbil;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbgd;Lcom/google/android/gms/internal/ads/zzdeg;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzfjo;Lcom/google/android/gms/internal/ads/zzdxz;Lcom/google/android/gms/internal/ads/zzclk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzb:Lcom/google/android/gms/internal/ads/zzazh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzc:Lcom/google/android/gms/internal/ads/zzbil;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzduv;->zze:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzf:Lcom/google/android/gms/internal/ads/zzbgd;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzg:Lcom/google/android/gms/internal/ads/zzdeg;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzh:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzi:Lcom/google/android/gms/internal/ads/zzfjo;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzj:Lcom/google/android/gms/internal/ads/zzdxz;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzk:Lcom/google/android/gms/internal/ads/zzclk;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;)Lcom/google/android/gms/internal/ads/zzcjl;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzclv;->zza(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzclv;

    move-result-object v2

    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzduk;

    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzduk;-><init>(Lcom/google/android/gms/internal/ads/zzduv;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzduv;->zzb:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzduv;->zzh:Lcom/google/android/gms/internal/ads/zzejf;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzduv;->zzc:Lcom/google/android/gms/internal/ads/zzbil;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzduv;->zze:Lcom/google/android/gms/ads/internal/zza;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzduv;->zzi:Lcom/google/android/gms/internal/ads/zzfjo;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzduv;->zza:Landroid/content/Context;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzduv;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzduv;->zzf:Lcom/google/android/gms/internal/ads/zzbgd;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzduv;->zzj:Lcom/google/android/gms/internal/ads/zzdxz;

    move-object/from16 v17, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 2
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzckb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzclv;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbil;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbgd;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzfjo;Lcom/google/android/gms/internal/ads/zzdxz;)Lcom/google/android/gms/internal/ads/zzcjl;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzpy:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzduv;->zzk:Lcom/google/android/gms/internal/ads/zzclk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzD()Landroid/webkit/WebView;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzclk;->zza(Landroid/webkit/WebView;)V

    :cond_0
    return-object v1
.end method

.method final synthetic zzb()Lcom/google/android/gms/internal/ads/zzdeg;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduv;->zzg:Lcom/google/android/gms/internal/ads/zzdeg;

    return-object v0
.end method
