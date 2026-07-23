.class public final Lcom/google/android/gms/internal/ads/zzjf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final zza:Landroid/content/Context;

.field zzb:Lcom/google/android/gms/internal/ads/zzdn;

.field zzc:Lcom/google/android/gms/internal/ads/zzgru;

.field zzd:Lcom/google/android/gms/internal/ads/zzgru;

.field zze:Lcom/google/android/gms/internal/ads/zzgru;

.field zzf:Lcom/google/android/gms/internal/ads/zzgru;

.field zzg:Lcom/google/android/gms/internal/ads/zzgru;

.field zzh:Lcom/google/android/gms/internal/ads/zzgqt;

.field zzi:Landroid/os/Looper;

.field zzj:I

.field zzk:Lcom/google/android/gms/internal/ads/zzd;

.field zzl:I

.field zzm:Z

.field zzn:Lcom/google/android/gms/internal/ads/zzmt;

.field zzo:Lcom/google/android/gms/internal/ads/zzms;

.field zzp:J

.field zzq:J

.field zzr:I

.field zzs:I

.field zzt:I

.field zzu:I

.field zzv:Z

.field zzw:Z

.field zzx:Ljava/lang/String;

.field zzy:Lcom/google/android/gms/internal/ads/zzip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzmq;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzje;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzje;-><init>(Lcom/google/android/gms/internal/ads/zzmq;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zziz;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zziz;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzja;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzja;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zziy;->zza:Lcom/google/android/gms/internal/ads/zziy;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjb;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzjb;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzix;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zza:Landroid/content/Context;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzc:Lcom/google/android/gms/internal/ads/zzgru;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzd:Lcom/google/android/gms/internal/ads/zzgru;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzjf;->zze:Lcom/google/android/gms/internal/ads/zzgru;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzf:Lcom/google/android/gms/internal/ads/zzgru;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzg:Lcom/google/android/gms/internal/ads/zzgru;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzh:Lcom/google/android/gms/internal/ads/zzgqt;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfj;->zze()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzi:Landroid/os/Looper;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzk:Lcom/google/android/gms/internal/ads/zzd;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzl:I

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzm:Z

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzmt;->zzc:Lcom/google/android/gms/internal/ads/zzmt;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzn:Lcom/google/android/gms/internal/ads/zzmt;

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzms;->zza:Lcom/google/android/gms/internal/ads/zzms;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzo:Lcom/google/android/gms/internal/ads/zzms;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzip;

    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v9

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v11

    const v13, 0x3f7fbe77    # 0.999f

    const/4 v14, 0x0

    move-wide v5, v4

    const v4, 0x3f7851ec    # 0.97f

    move-wide v6, v5

    const v5, 0x3f83d70a    # 1.03f

    move-wide v15, v6

    const-wide/16 v6, 0x3e8

    const v8, 0x33d6bf95    # 1.0E-7f

    move-wide v1, v15

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzip;-><init>(FFJFJJF[B)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzy:Lcom/google/android/gms/internal/ads/zzip;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdn;->zza:Lcom/google/android/gms/internal/ads/zzdn;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzp:J

    const-wide/16 v1, 0x7d0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzq:J

    const v1, 0x927c0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzr:I

    const v2, 0x7fffffff

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzs:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzt:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzu:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzv:Z

    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzx:Ljava/lang/String;

    const/16 v1, -0x3e8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzj:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_0

    .line 6
    sget v1, Lcom/google/android/gms/internal/ads/zziv;->$r8$clinit:I

    :cond_0
    return-void
.end method
