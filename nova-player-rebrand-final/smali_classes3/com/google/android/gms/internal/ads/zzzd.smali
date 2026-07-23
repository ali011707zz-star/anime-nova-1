.class final synthetic Lcom/google/android/gms/internal/ads/zzzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzr;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzzl;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zza:Lcom/google/android/gms/internal/ads/zzzl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza(ILcom/google/android/gms/internal/ads/zzbg;[I)Ljava/util/List;
    .locals 10

    sget v0, Lcom/google/android/gms/internal/ads/zzaaa;->$r8$clinit:I

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzguf;->$r8$clinit:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguc;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    const/4 v1, 0x0

    move v5, v1

    .line 3
    :goto_0
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    if-ge v5, v1, :cond_0

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzc:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzzd;->zza:Lcom/google/android/gms/internal/ads/zzzl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzq;

    .line 4
    aget v7, p3, v5

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzzq;-><init>(ILcom/google/android/gms/internal/ads/zzbg;ILcom/google/android/gms/internal/ads/zzzl;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    return-object p1
.end method
