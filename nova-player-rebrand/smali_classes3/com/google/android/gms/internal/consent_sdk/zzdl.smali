.class final Lcom/google/android/gms/internal/consent_sdk/zzdl;
.super Lcom/google/android/gms/internal/consent_sdk/zzdn;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzdo;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/consent_sdk/zzdh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzdn;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdo;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final zzc(I)I
    .locals 0

    .line 0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final zzd(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdn;->zza:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "index"

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzdj;->zzb(IILjava/lang/String;)I

    :goto_0
    if-ge p1, v1, :cond_1

    .line 3
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
