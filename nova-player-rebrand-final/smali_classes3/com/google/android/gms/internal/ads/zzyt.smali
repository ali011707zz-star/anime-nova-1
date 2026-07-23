.class public final Lcom/google/android/gms/internal/ads/zzyt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdn;->zza:Lcom/google/android/gms/internal/ads/zzdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyt;->zza:Lcom/google/android/gms/internal/ads/zzdn;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzbg;[IILcom/google/android/gms/internal/ads/zzaas;Lcom/google/android/gms/internal/ads/zzguf;)Lcom/google/android/gms/internal/ads/zzyu;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzyt;->zza:Lcom/google/android/gms/internal/ads/zzdn;

    move-object/from16 v17, v1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyu;

    const v14, 0x3f333333    # 0.7f

    const/high16 v15, 0x3f400000    # 0.75f

    const/4 v4, 0x0

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x61a8

    const/16 v12, 0x4ff

    const/16 v13, 0x2cf

    move-wide v10, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzyu;-><init>(Lcom/google/android/gms/internal/ads/zzbg;[IILcom/google/android/gms/internal/ads/zzaas;JJJIIFFLjava/util/List;Lcom/google/android/gms/internal/ads/zzdn;)V

    return-object v1
.end method
