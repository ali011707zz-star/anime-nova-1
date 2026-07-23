.class final Lcom/google/android/gms/internal/ads/zzmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zzu:Lcom/google/android/gms/internal/ads/zzwk;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzbf;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzwk;

.field public final zzc:J

.field public final zzd:J

.field public final zze:I

.field public final zzf:Lcom/google/android/gms/internal/ads/zziw;

.field public final zzg:Z

.field public final zzh:Lcom/google/android/gms/internal/ads/zzyn;

.field public final zzi:Lcom/google/android/gms/internal/ads/zzaak;

.field public final zzj:Ljava/util/List;

.field public final zzk:Lcom/google/android/gms/internal/ads/zzwk;

.field public final zzl:Z

.field public final zzm:I

.field public final zzn:I

.field public final zzo:Lcom/google/android/gms/internal/ads/zzav;

.field public final zzp:Z

.field public volatile zzq:J

.field public volatile zzr:J

.field public volatile zzs:J

.field public volatile zzt:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwk;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Ljava/lang/Object;J)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzmd;->zzu:Lcom/google/android/gms/internal/ads/zzwk;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJILcom/google/android/gms/internal/ads/zziw;ZLcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzaak;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwk;ZIILcom/google/android/gms/internal/ads/zzav;JJJJZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmd;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzd:J

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzmd;->zze:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzf:Lcom/google/android/gms/internal/ads/zziw;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzg:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzh:Lcom/google/android/gms/internal/ads/zzyn;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzi:Lcom/google/android/gms/internal/ads/zzaak;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzj:Ljava/util/List;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzk:Lcom/google/android/gms/internal/ads/zzwk;

    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzl:Z

    iput p15, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzm:I

    move/from16 p1, p16

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzn:I

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzo:Lcom/google/android/gms/internal/ads/zzav;

    move-wide/from16 p1, p18

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzq:J

    move-wide/from16 p1, p20

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzr:J

    move-wide/from16 p1, p22

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzs:J

    move-wide/from16 p1, p24

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzt:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzp:Z

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzaak;)Lcom/google/android/gms/internal/ads/zzmd;
    .locals 27

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmd;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbf;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzmd;->zzu:Lcom/google/android/gms/internal/ads/zzwk;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzyn;->zza:Lcom/google/android/gms/internal/ads/zzyn;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v12

    sget-object v17, Lcom/google/android/gms/internal/ads/zzav;->zza:Lcom/google/android/gms/internal/ads/zzav;

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object v13, v2

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v26}, Lcom/google/android/gms/internal/ads/zzmd;-><init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJILcom/google/android/gms/internal/ads/zziw;ZLcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzaak;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwk;ZIILcom/google/android/gms/internal/ads/zzav;JJJJZ)V

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzmd;->zzu:Lcom/google/android/gms/internal/ads/zzwk;

    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzwk;JJJJLcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzaak;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzmd;
    .locals 28

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzmd;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzk:Lcom/google/android/gms/internal/ads/zzwk;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzn:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzo:Lcom/google/android/gms/internal/ads/zzav;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzq:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzmd;->zze:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzf:Lcom/google/android/gms/internal/ads/zziw;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzg:Z

    move/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    const/16 v27, 0x0

    move-wide/from16 v23, p2

    move-wide/from16 v21, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    move-object/from16 v3, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzmd;-><init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJILcom/google/android/gms/internal/ads/zziw;ZLcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzaak;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwk;ZIILcom/google/android/gms/internal/ads/zzav;JJJJZ)V

    return-object v1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzmd;
    .locals 30

    .line 0
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmd;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzmd;->zze:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzf:Lcom/google/android/gms/internal/ads/zziw;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzh:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzi:Lcom/google/android/gms/internal/ads/zzaak;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzk:Lcom/google/android/gms/internal/ads/zzwk;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzm:I

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzn:I

    move/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzo:Lcom/google/android/gms/internal/ads/zzav;

    move-object/from16 v19, v1

    move/from16 v18, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzq:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzr:J

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzs:J

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzt:J

    const/16 v27, 0x0

    move-wide/from16 v28, v1

    move-object/from16 v1, v16

    move/from16 v16, v18

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v28

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzmd;-><init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJILcom/google/android/gms/internal/ads/zziw;ZLcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzaak;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwk;ZIILcom/google/android/gms/internal/ads/zzav;JJJJZ)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzmd;
    .locals 28

    .line 0
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmd;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzf:Lcom/google/android/gms/internal/ads/zziw;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzh:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzi:Lcom/google/android/gms/internal/ads/zzaak;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzk:Lcom/google/android/gms/internal/ads/zzwk;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzn:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzo:Lcom/google/android/gms/internal/ads/zzav;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzq:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzr:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzs:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzt:J

    move-wide/from16 v25, v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzc:J

    move-wide/from16 v21, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzd:J

    const/16 v27, 0x0

    move/from16 v8, p1

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzmd;-><init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJILcom/google/android/gms/internal/ads/zziw;ZLcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzaak;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwk;ZIILcom/google/android/gms/internal/ads/zzav;JJJJZ)V

    return-object v1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zziw;)Lcom/google/android/gms/internal/ads/zzmd;
    .locals 28

    .line 0
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmd;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzh:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzi:Lcom/google/android/gms/internal/ads/zzaak;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzk:Lcom/google/android/gms/internal/ads/zzwk;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzn:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzo:Lcom/google/android/gms/internal/ads/zzav;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzq:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzr:J

    move-object v9, v1

    move/from16 v16, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzs:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzt:J

    move-wide/from16 v25, v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    move/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzc:J

    move-wide/from16 v21, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzmd;->zze:I

    const/16 v27, 0x0

    move-object v1, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzmd;-><init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJILcom/google/android/gms/internal/ads/zziw;ZLcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzaak;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwk;ZIILcom/google/android/gms/internal/ads/zzav;JJJJZ)V

    return-object v1
.end method

.method public final zzg(Z)Lcom/google/android/gms/internal/ads/zzmd;
    .locals 28

    .line 0
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmd;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzh:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzi:Lcom/google/android/gms/internal/ads/zzaak;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzk:Lcom/google/android/gms/internal/ads/zzwk;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzn:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzo:Lcom/google/android/gms/internal/ads/zzav;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzq:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzr:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzs:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzt:J

    move-wide/from16 v25, v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzc:J

    move-wide/from16 v21, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzmd;->zze:I

    move-wide/from16 v23, v9

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzf:Lcom/google/android/gms/internal/ads/zziw;

    const/16 v27, 0x0

    move/from16 v10, p1

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzmd;-><init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJILcom/google/android/gms/internal/ads/zziw;ZLcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzaak;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwk;ZIILcom/google/android/gms/internal/ads/zzav;JJJJZ)V

    return-object v1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzwk;)Lcom/google/android/gms/internal/ads/zzmd;
    .locals 28

    .line 0
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmd;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzn:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzo:Lcom/google/android/gms/internal/ads/zzav;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzq:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzr:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzs:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzt:J

    move/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    move/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzc:J

    move-wide/from16 v21, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzmd;->zze:I

    move-wide/from16 v23, v9

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzf:Lcom/google/android/gms/internal/ads/zziw;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzg:Z

    move-wide/from16 v25, v11

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzh:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzi:Lcom/google/android/gms/internal/ads/zzaak;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzj:Ljava/util/List;

    const/16 v27, 0x0

    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzmd;-><init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJILcom/google/android/gms/internal/ads/zziw;ZLcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzaak;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwk;ZIILcom/google/android/gms/internal/ads/zzav;JJJJZ)V

    return-object v1
.end method

.method public final zzi(ZII)Lcom/google/android/gms/internal/ads/zzmd;
    .locals 28

    .line 0
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmd;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzo:Lcom/google/android/gms/internal/ads/zzav;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzq:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzr:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzs:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzt:J

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzmd;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    move-wide/from16 v19, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    move-wide/from16 v21, v5

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzc:J

    move-wide/from16 v23, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzmd;->zze:I

    move-wide/from16 v25, v9

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzf:Lcom/google/android/gms/internal/ads/zziw;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzh:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzi:Lcom/google/android/gms/internal/ads/zzaak;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzmd;->zzk:Lcom/google/android/gms/internal/ads/zzwk;

    const/16 v27, 0x0

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/internal/ads/zzmd;-><init>(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJILcom/google/android/gms/internal/ads/zziw;ZLcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzaak;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwk;ZIILcom/google/android/gms/internal/ads/zzav;JJJJZ)V

    return-object v1
.end method

.method public final zzj()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmd;->zze:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmd;->zzn:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
