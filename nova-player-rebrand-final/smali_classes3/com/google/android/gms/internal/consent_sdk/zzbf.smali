.class public final Lcom/google/android/gms/internal/consent_sdk/zzbf;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzth;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field private final zzc:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field private final zzd:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field private final zze:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field private final zzf:Lcom/google/android/gms/internal/consent_sdk/zztk;

.field private final zzg:Lcom/google/android/gms/internal/consent_sdk/zztk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zzc:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zzd:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zze:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zzf:Lcom/google/android/gms/internal/consent_sdk/zztk;

    iput-object p7, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zzg:Lcom/google/android/gms/internal/consent_sdk/zztk;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)Lcom/google/android/gms/internal/consent_sdk/zzbf;
    .locals 8

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbf;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/consent_sdk/zzbf;-><init>(Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;Lcom/google/android/gms/internal/consent_sdk/zztk;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zza:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zzb:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzad;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zzc:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/consent_sdk/zzbz;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zzd:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/consent_sdk/zzaq;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zze:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zzg:Lcom/google/android/gms/internal/consent_sdk/zztk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zztm;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/consent_sdk/zzcr;

    iget-object v7, p0, Lcom/google/android/gms/internal/consent_sdk/zzbf;->zzf:Lcom/google/android/gms/internal/consent_sdk/zztk;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbe;

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/consent_sdk/zzbe;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzad;Lcom/google/android/gms/internal/consent_sdk/zzbz;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzbs;Lcom/google/android/gms/internal/consent_sdk/zztm;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V

    return-object v1
.end method
