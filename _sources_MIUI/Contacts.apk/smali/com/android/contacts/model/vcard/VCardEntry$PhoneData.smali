.class public Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneData"
.end annotation


# instance fields
.field private mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mNumber:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .parameter "data"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    .line 319
    iput p2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mType:I

    .line 320
    iput-object p3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    .line 321
    iput-boolean p4, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    .line 322
    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 329
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 330
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 332
    const-string v1, "data2"

    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 333
    iget v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mType:I

    if-nez v1, :cond_0

    .line 334
    const-string v1, "data3"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 336
    :cond_0
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 337
    iget-boolean v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-eqz v1, :cond_1

    .line 338
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 340
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 350
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 357
    :goto_0
    return v2

    .line 353
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;

    if-nez v2, :cond_1

    move v2, v4

    .line 354
    goto :goto_0

    .line 356
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;

    move-object v1, v0

    .line 357
    .local v1, phoneData:Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;
    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mType:I

    iget v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    iget-boolean v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    iget v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mType:I

    .line 366
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 367
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 368
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    :goto_2
    add-int v0, v1, v2

    .line 369
    return v0

    :cond_0
    move v2, v3

    .line 366
    goto :goto_0

    :cond_1
    move v2, v3

    .line 367
    goto :goto_1

    .line 368
    :cond_2
    const/16 v2, 0x4d5

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 374
    const-string v0, "type: %d, data: %s, label: %s, isPrimary: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
