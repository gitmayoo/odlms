-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2024 at 12:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odlms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_list`
--

CREATE TABLE `appointment_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `schedule` datetime NOT NULL,
  `client_id` int(30) NOT NULL,
  `prescription_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_list`
--

INSERT INTO `appointment_list` (`id`, `code`, `schedule`, `client_id`, `prescription_path`, `status`, `date_created`, `date_updated`) VALUES
(5, '202403-0001', '2024-04-24 09:00:00', 8, '', 0, '2024-03-23 15:51:45', NULL),
(6, '202403-0002', '2024-04-24 09:00:00', 8, '', 0, '2024-03-23 15:52:00', NULL),
(7, '202403-0003', '2024-04-24 10:30:00', 8, '', 0, '2024-03-23 15:52:38', NULL),
(8, '202403-0004', '2024-04-24 10:30:00', 8, '', 0, '2024-03-23 15:52:41', NULL),
(9, '202403-0005', '2024-04-24 10:30:00', 8, '', 5, '2024-03-23 15:52:42', '2024-03-23 15:55:38'),
(10, '202403-0006', '2024-03-24 19:06:00', 10, '', 0, '2024-03-24 19:07:19', NULL),
(11, '202403-0007', '2024-03-24 19:06:00', 10, '', 0, '2024-03-24 19:07:29', NULL),
(12, '202403-0008', '2024-03-24 19:06:00', 10, '', 0, '2024-03-24 19:07:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_test_list`
--

CREATE TABLE `appointment_test_list` (
  `appointment_id` int(30) NOT NULL,
  `test_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `email`, `password`, `dob`, `address`, `avatar`, `delete_flag`, `date_created`, `date_updated`) VALUES
(6, 'Sam', '', 'kumar', 'Male', '0763355889', 'sam223@gmail.com', '9ef027ada8189d53d73194fdb67c8718', '2008-03-11', 'no 01, hospital road,\r\nnelliyadi.', 'uploads/client-6.png?v=1711174002', 0, '2024-03-23 11:33:24', '2024-03-23 11:36:42'),
(7, 'Hari', '', 'Ram', 'Male', '0761233450', 'hari123@gmail.com', '0769e56eb5d72039f01530d705e971da', '2002-04-09', 'No 23, temple road,\r\nJaffna.', 'uploads/client-7.png?v=1711177842', 0, '2024-03-23 12:21:27', '2024-03-24 19:36:50'),
(8, 'Salini', '', 'Mathavan', 'Female', '0773334449', 'salini44@gmail.com', 'cc5c06f3c5c6e88c12ef299899e43b26', '1998-08-13', 'No 04, Point pedro road,\r\nKopai.', 'uploads/client-8.png?v=1711290434', 0, '2024-03-23 12:44:47', '2024-03-24 19:57:14'),
(9, 'Sujitha', '', 'bavan', 'Female', '0769988772', 'sujitha005@gmail.com', '28be0797f54f339f17bd11a7e53ae55e', '2002-09-14', 'No 05, university road,\r\nJaffna.', 'uploads/client-9.png?v=1711290369', 0, '2024-03-23 12:51:50', '2024-03-24 19:56:09'),
(10, 'Michal', '', 'Advin', 'Male', '0779871230', 'michal87@gmail.com', '39ccba2c67641b73c3d92afc41d4791b', '1995-03-19', 'no 20, Nelliyadi south,\r\nPoint pedro.', 'uploads/client-10.png?v=1711179142', 0, '2024-03-23 13:01:20', '2024-03-24 19:38:19'),
(11, 'Amli', '', 'Richard', 'Female', '0765551110', 'amli777@gmail.com', 'd44f8b945cd6fb37ed083eda2d43f072', '2000-09-20', 'no 12, jaffna university road,\r\njaffna', 'uploads/client-11.png?v=1711290229', 0, '2024-03-23 13:06:06', '2024-03-24 19:53:49'),
(12, 'Rani', '', 'Suthan', 'Female', '0760028745', 'rani9898@gmail.com', '6351babd29456367a6b80e7f6202844d', '1998-11-12', 'no 24, Kopay north,\r\njaffna.', 'uploads/client-12.png?v=1711179643', 0, '2024-03-23 13:10:11', '2024-03-24 19:45:42'),
(13, 'Mohini', '', 'Krish', 'Female', '0769944001', 'mohini03@gmail.com', '89bcc85fe54b6ec08f3f42fb5279701a', '2003-08-14', 'no 11, main road,\r\npoint pedro.', 'uploads/client-13.png?v=1711290273', 0, '2024-03-23 13:14:14', '2024-03-24 19:54:33'),
(14, 'saru', '', 'khan', 'Male', '0743450986', 'saru96@gmail.com', '0d42057f4a9fe2c982f7ac55e2c5b12d', '1996-03-19', 'No 03, Main road,\r\nJaffna.\r\n', 'uploads/client-14.png?v=1711184415', 0, '2024-03-23 14:28:31', '2024-03-23 14:30:15'),
(15, 'Krishna', '', 'kumar', 'Male', '0769956320', 'krishna997@gmail.com', 'c502fc5b0c550dcbc84f992b121e535c', '1997-11-07', 'No 09, Base hospital road,\r\nManthikai.\r\n', 'uploads/client-15.png?v=1711184650', 0, '2024-03-23 14:33:29', '2024-03-24 19:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `history_list`
--

CREATE TABLE `history_list` (
  `id` int(30) NOT NULL,
  `appointment_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_list`
--

INSERT INTO `history_list` (`id`, `appointment_id`, `status`, `remarks`, `date_created`) VALUES
(12, 9, 5, '', '2024-03-23 15:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'ABC Lab Management System'),
(6, 'short_name', 'ABC Lab'),
(11, 'logo', 'uploads/l8.PNG'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/backcover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `test_list`
--

CREATE TABLE `test_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `cost` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test_list`
--

INSERT INTO `test_list` (`id`, `name`, `description`, `cost`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(7, 'blood analysis', 'o	blood count\r\no	blood typing\r\no	bone marrow aspiration\r\no	cephalin-cholesterol flocculation\r\no	enzyme analysis\r\no	epinephrine tolerance test\r\no	glucose tolerance test\r\no	hematocrit\r\no	immunologic blood test\r\no	inulin clearance\r\no	serological test\r\no	thymol turbidity', 2500, 1, 0, '2024-03-23 13:47:25', NULL),
(8, 'gastric fluid analysis', 'Gastric fluid analysis, medical procedure used to examine the secretions and other liquid substances occurring in the stomach. By means of a tube passed through the nose and into the stomach, gastric fluid can be obtained from the stomach. The most common reason for this test is to look for blood in the upper gastrointestinal tract. Gastric fluid also can be cultured to test for tuberculosis if an adequate sputum sample cannot be obtained for culture.', 1200, 1, 0, '2024-03-23 13:50:58', NULL),
(9, 'kidney function test', 'Kidney function test, any clinical and laboratory procedure designed to evaluate various aspects of renal (kidney) capacity and efficiency and to aid in the diagnosis of kidney disorders. Such tests can be divided into several categories, which include (1) concentration and dilution tests, whereby the specific gravity of urine is determined at regular time intervals following water restriction or large water intake, to measure the capacity of the kidneys to conserve water, (2) clearance tests, which give an estimate of the filtration rate of the glomeruli, the principal filtering structures of the kidneys (see inulin clearance), and overall renal blood flow (see phenolsulfonphthalein test), (3) visual and physical examination of the urine, which usually includes the recording of its physical characteristics such as colour, total volume, and specific gravity, as well as checking for the abnormal presence of pus, hyaline casts (precipitation of pure protein from the kidney tubules), and red and white blood cells; proteinuria, the presence of protein in the urine, is often the first abnormal finding indicative of kidney disease, (4) determination of the concentration of various substances in the urine, notably glucose, amino acids, phosphate, sodium, and potassium, to help detect possible impairment of the specific kidney mechanisms normally involved with their reabsorption.', 3000, 1, 0, '2024-03-23 13:53:38', NULL),
(10, 'liver function test', 'Liver function test, any laboratory procedure that measures and assesses various aspects of liver function.\r\n\r\nBecause of the diversity of liver function and the varied and complicated metabolic processes that may be affected by disease states, more than 100 tests have been devised to test liver function. These reactions bear upon the metabolism of proteins, fats, carbohydrates, bile, and the detoxification and clearance of drugs and toxic chemicals performed by the liver. Since most of the substances metabolized by the liver enter the systemic circulation, the selective determination of the concentration of some of them in the blood usually gives valuable diagnostic information about a patient’s liver. Urinary values are sometimes also obtained to corroborate blood-serum findings. In clinical practice, some of the more important blood-serum substances are ammonia, urea, amino acids, proteins, free and esterified cholesterol, bilirubin, and various enzymes (notably, cholinesterase, ceruloplasmin, the transaminases, and alkaline phosphatase). In assessing liver metabolism of sugars, tolerance tests are helpful (see glucose tolerance test).', 2000, 1, 0, '2024-03-23 13:55:36', NULL),
(11, 'pregnancy test', 'Pregnancy test, procedure aimed at determining whether a woman is pregnant. Pregnancy tests are based on a detectable increase in human chorionic gonadotropin (HCG) in the blood serum and urine during early pregnancy. HCG is the principal hormone produced by the chorionic layers of the placenta, the temporary organ that provides nourishment for the developing fetus. Levels of HCG increase significantly following implantation of the fertilized egg in the uterine wall, which occurs sometime between 6 and 12 days after fertilization.', 1500, 1, 0, '2024-03-23 13:57:22', NULL),
(12, 'prenatal testing', 'Prenatal testing, any of several screening and diagnostic procedures that provide information on the health of a developing human fetus. Prenatal screening tests generally are used to assess the likelihood that a baby will be affected by certain conditions. When screening tests indicate that a fetus is at increased risk, prenatal diagnostic tests, which often are invasive, may be performed to confirm the presence of a disorder.', 1000, 1, 0, '2024-03-23 13:58:06', NULL),
(13, 'protein-bound iodine test', 'Protein-bound iodine test, laboratory test that indirectly assesses thyroid function by measuring the concentration of iodine bound to proteins circulating in the bloodstream. Thyroid hormones are formed by the addition of iodine to the amino acid tyrosine and are normally transported in the bloodstream by carrier proteins. In the PBI test, these carrier proteins are precipitated from the blood, and the quantity of bound iodine is measured. Under certain abnormal circumstances, protein-bound iodine may be partly derived from iodinated substances other than the thyroid hormones. The butanol-extraction iodine test, which roughly parallels the PBI test, serves to separate the thyroid hormones from other types of iodinated components. Today the PBI test has been replaced by tests capable of measuring thyroid hormone levels directly. See also thyroid function test.', 1200, 1, 0, '2024-03-23 13:59:06', NULL),
(14, 'syphilis test', 'Syphilis test, any of several laboratory procedures for the detection of syphilis. The most commonly used tests are carried out on a sample of blood serum (serological tests for syphilis, or STS). Serological tests are divided into two types: nontreponemal and treponemal. Nontreponemal tests include the rapid plasma reagin (RPR) test and the Venereal Disease Research Laboratory (VDRL) test, both of which are based on the detection in the blood of syphilis reagin (a type of serum antibody). Treponemal tests include the Treponema pallidum hemagglutination assay (TPHA; or T. pallidum particle agglutination assay, TPPA); the enzyme immunoassay (EIA); and the fluorescent treponemal antibody absorption (FTA-ABS) test. Treponemal tests are based on the detection of treponemal antibody—the antibody that attacks T. pallidum, the spirochete that causes syphilis—in the blood. In most cases, the diagnosis of syphilis is performed using both a nontreponemal and a treponemal test.', 1200, 1, 0, '2024-03-23 13:59:54', NULL),
(15, 'thoracentesis', 'Thoracentesis, medical procedure used in the diagnosis and treatment of conditions affecting the pleural space—the cavity between the lungs and the thoracic cage. It is most often used to diagnose the cause of pleural effusion, the abnormal accumulation of fluid in the pleural space. Pleural effusion can result in difficulty in breathing and often occurs secondary to conditions that affect the heart or lungs, including heart failure, tumours, and lung infections, such as tuberculosis and pneumonia. Thoracentesis is used therapeutically to relieve the symptoms associated with pleural effusion, as well as to prevent further complications associated with the condition, including pleural empyema—the accumulation of pus in the pleural space.', 1700, 1, 0, '2024-03-23 14:00:52', NULL),
(16, 'thyroid function test', 'Thyroid function test, any laboratory procedure that assesses the production of the two active thyroid hormones, thyroxine (T4) and triiodothyronine (T3), by the thyroid gland and the production of thyrotropin (thyroid-stimulating hormone, TSH), the hormone that regulates thyroid secretion, by the pituitary gland. The best and most widely used tests are measurements of serum thyrotropin and thyroxine. The secretion of thyrotropin changes substantially in response to very small changes in thyroxine and triiodothyronine production. For example, small decreases in thyroid hormone production result in relatively large increases in serum concentrations of thyrotropin, and, conversely, small increases in thyroxine and triiodothyronine production result in relatively large decreases in serum concentrations of thyrotropin. Therefore, patients with hypothyroidism (thyroid deficiency) almost invariably have not only low serum thyroid hormone but also high serum thyrotropin concentrations, and those with hyperthyroidism have high serum thyroid hormone and low serum thyrotropin concentrations. An exception is patients with pituitary disease and thyrotropin deficiency, who have low serum thyroid hormone but normal or low serum thyrotropin concentrations. Between the two thyroid hormones, measurements of serum thyroxine are preferred because serum triiodothyronine concentrations are abnormal in many patients with nonthyroid illnesses.', 1900, 1, 0, '2024-03-23 14:01:44', NULL),
(17, 'toxicology test', 'Toxicology test, any of a group of laboratory analyses that are used to determine the presence of poisons and other potentially toxic agents in blood, urine, or other bodily substances. Toxicology is the study of poisons—their action, their detection, and the treatment of conditions they produce. Many substances are toxic only at high concentrations. For example, lithium is used to treat bipolar disorder but can be toxic at high levels. Another example is acetaminophen, which is valuable in controlling fever and discomfort but is toxic in large doses.', 1400, 1, 0, '2024-03-23 14:03:16', NULL),
(18, 'urinalysis', 'Urinalysis, laboratory examination of a sample of urine to obtain clinical information. Most of the substances normally excreted in the urine are metabolic products dissolved or suspended in water. A deviation from normal in the concentration of urinary constituents or the abnormal presence of specific substances may thus be indicative of bodily disorders. Changes in urine colour, specific gravity, and volume may also provide evidence of a specific disease or body injury', 1500, 1, 0, '2024-03-23 14:04:36', NULL),
(19, 'ultrasound', 'Ultrasound, in medicine, the use of high-frequency sound (ultrasonic) waves to produce images of structures within the human body. Ultrasonic waves are sound waves that are above the range of sound audible to humans. The ultrasonic waves are produced by the electrical stimulation of a piezoelectric crystal and can be aimed at a specific area of the body. As the waves travel through bodily tissues, they are reflected back at any point where there is a change in tissue density, as, for instance, in the border between two different organs of the body. The reflected echoes are received by an electronic apparatus that determines the intensity level of the echoes and the position of the tissue giving rise to the echoes. The images thus formed can be displayed in static form, or, through the use of rapid multiple sound scans, they can in effect provide a moving picture of the inside of the body.', 2000, 1, 0, '2024-03-23 14:06:07', NULL),
(20, 'tomography', 'Tomography,, radiologic technique for obtaining clear X-ray images of deep internal structures by focusing on a specific plane within the body. Structures that are obscured by overlying organs and soft tissues that are insufficiently delineated on conventional X rays can thus be adequately visualized.\r\n\r\nThe simplest method is linear tomography, in which the X-ray tube is moved in a straight line in one direction while the film moves in the opposite direction. As these shifts occur, the X-ray tube continues to emit radiation so that most structures in the part of the body under examination are blurred by motion. Only those objects lying in a plane coinciding with the pivot point of a line between the tube and the film are in focus. A somewhat more complicated technique known as multidirectional tomography produces an even sharper image by moving the film and X-ray tube in a circular or elliptical pattern. As long as both tube and film move in synchrony, a clear image of objects in the focal plane can be produced. These tomographic approaches have been used to study the kidneys and other abdominal structures that are surrounded by tissues of nearly the same density and so cannot be differentiated by conventional X-ray techniques. They have also been employed to examine the small bones and other structures of the ear, which are surrounded by relatively dense temporal bone.', 2200, 1, 0, '2024-03-23 14:07:53', NULL),
(21, 'prenatal testing', 'Prenatal testing, any of several screening and diagnostic procedures that provide information on the health of a developing human fetus. Prenatal screening tests generally are used to assess the likelihood that a baby will be affected by certain conditions. When screening tests indicate that a fetus is at increased risk, prenatal diagnostic tests, which often are invasive, may be performed to confirm the presence of a disorder.', 2000, 1, 0, '2024-03-23 14:08:35', NULL),
(22, 'myelography', 'Myelography, medical procedure for examining the spinal cord by means of X rays. It is especially useful in diagnosing spinal abscesses and tumours and dislocated intervertebral disks.\r\n\r\nIn this procedure a positive contrast agent, usually in the form of a water-soluble radiopaque substance or iodinated oil, is injected into the spinal canal. This contrast agent, which makes body tissue more visible when irradiated with X rays, is maneuvered throughout the spinal canal from the lumbrosacral (tail bone) region up to the base of the brain by tilting the examination table to which the patient is strapped. A fluoroscope is used to observe the various parts of the canal as the contrast agent passes through them. The contrast medium is generally removed after a myelogram has been completed, though the use of certain water-soluble radiopaque substances makes this step unnecessary since they are readily eliminated from the body by natural means. Iodinated oil may cause irritations, resulting in temporary discomfort.', 1500, 1, 0, '2024-03-23 14:09:12', NULL),
(23, 'lung ventilation/perfusion scan', 'Lung ventilation/perfusion scan, in medicine, a test that measures both air flow (ventilation) and blood flow (perfusion) in the lungs. Lung ventilation/perfusion scanning is used most often in the diagnosis of pulmonary embolism, the blockage of one of the pulmonary arteries or of a connecting vessel. Pulmonary embolism is caused by a clot or an air bubble that has become lodged within a vessel or by the accumulation of fat along the inner walls of the vessel, thereby narrowing the passageway and hindering the flow of blood. The procedure is also used to accurately identify damaged regions of lung tissue prior to surgery to remove the tissue. This approach may be taken for patients with advanced or rapidly spreading lung cancer.', 1700, 1, 0, '2024-03-23 14:09:55', NULL),
(24, 'brain scanning', 'Brain scanning, any of a number of diagnostic methods for detecting intracranial abnormalities.\r\n\r\nThe oldest of the brain-scanning procedures still in use is a simple, relatively noninvasive procedure called isotope scanning. It is based on the tendency of certain radioactive isotopes to concentrate selectively in tumours and blood vessel lesions. The procedure involves the injection of a radioactive isotope (such as technetium-99m or iodine-131) into a blood vessel that supplies the cranial region. As the substance becomes localized within the brain, it decays, therewith emitting gamma rays. The concentration of rays at a given site, as measured by a movable radiation detection device, can reveal the presence, the shape, and often the size of the intracranial abnormality. In many cases, isotope scanning has been replaced by computerized axial tomography (CAT), or computed tomography (CT).', 1800, 1, 0, '2024-03-23 14:10:57', NULL),
(25, 'cholecystography', 'Cholecystography, X ray of the gallbladder and biliary channels, following the administration of a radiopaque dye, one of the techniques of diagnostic imaging (q.v.). In oral cholecystography, the dye is ingested, absorbed by the intestine, and concentrated by the gallbladder, which normally appears well opacified in the X ray. Abnormalities (e.g., gallstones) may be demonstrated by radiolucent areas. Oral cholecystography is usually indicated in cases of suspected gallbladder disease. Newer dyes that permit visualization of the bile channels without concentration by the gallbladder are administered intravenously to determine or rule out the presence of intermittent obstruction of the bile ducts or recurrent biliary disease after biliary surgery.', 1500, 1, 0, '2024-03-23 14:11:36', NULL),
(26, 'fluorescence in situ hybridization', 'Fluorescence in situ hybridization (FISH), technique that employs fluorescent probes for the detection of specific deoxyribonucleic acid (DNA) sequences in chromosomes. FISH has a much higher rate of sensitivity and specificity than other genetic diagnostic tests such as karyotyping and thus can be used to detect a variety of structural abnormalities in chromosomes, including small genetic deletions involving just one to five genes. It is also useful in detecting moderate-sized deletions such as those causing Prader-Willi syndrome, a rare genetic disorder characterized by a rounded face, low forehead, and intellectual disability. FISH also provides results more quickly than karyotyping because no cell culture is required.\r\n\r\nFISH is commonly used for preimplantation genetic diagnosis (PGD) during in vitro fertilization. PGD involves obtaining a single cell from an embryo in the blastocyst stage of development. This single cell can then be analyzed using FISH. One problem with using FISH for PGD is that a single cell is scant material for diagnosis; therefore, a large array of tests cannot be performed. Similarly, if the test fails for any technical reason, it cannot be repeated.', 1300, 1, 0, '2024-03-23 14:13:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1639468007', NULL, 1, 1, '2024-03-20 14:02:37', '2024-03-14 15:47:08'),
(7, 'Vimal', NULL, 'Rajan', 'Vimal', 'ab67a20df7c5e3c5aa78adaa48629df6', 'uploads/avatar-7.png?v=1711186008', NULL, 2, 1, '2024-03-23 14:56:48', '2024-03-23 14:56:48'),
(8, 'Priven', NULL, 'Kumar', 'Priven', '0cd3644f6466d071da7812b2b8d1e9ef', 'uploads/avatar-8.png?v=1711186266', NULL, 1, 1, '2024-03-23 15:01:06', '2024-03-23 15:01:06'),
(9, 'Jayam', NULL, 'Ravi', 'Jayam', '3ee0b33803cabffdde77ab27afa34677', 'uploads/avatar-9.png?v=1711186724', NULL, 2, 1, '2024-03-23 15:08:44', '2024-03-23 15:08:44'),
(10, 'Antony', NULL, 'Martin', 'Antony', 'e289a833072fa854cea97ed7b0947807', 'uploads/avatar-10.png?v=1711186809', NULL, 2, 1, '2024-03-23 15:10:09', '2024-03-23 15:10:09'),
(11, 'David', NULL, 'Para', 'David', '880450e5d1b24690e4960f4c0ae5ced1', 'uploads/avatar-11.png?v=1711187136', NULL, 2, 1, '2024-03-23 15:15:36', '2024-03-23 15:15:36'),
(12, 'Andru', NULL, 'Aathi', 'Andru', '95bc2aca9a834eb6ce018267c1c9e1f3', 'uploads/avatar-12.png?v=1711187216', NULL, 2, 1, '2024-03-23 15:16:56', '2024-03-23 15:16:56'),
(13, 'Luxan', NULL, 'Dilan', 'Luxan', 'ab5214bc1c822137498855adfd7c6b3c', 'uploads/avatar-13.png?v=1711187313', NULL, 2, 1, '2024-03-23 15:18:33', '2024-03-23 15:18:33'),
(14, 'Arul', NULL, 'Athi', 'Arul', '6e7eabc8f6211defa675f7c1664aa20d', 'uploads/avatar-14.png?v=1711187449', NULL, 2, 1, '2024-03-23 15:20:49', '2024-03-23 15:20:49'),
(15, 'Reka', NULL, 'Mathi', 'Reka', 'c99cf8c5ffb859e7079adad97644cf10', 'uploads/avatar-15.png?v=1711187924', NULL, 1, 1, '2024-03-23 15:28:44', '2024-03-23 15:28:44'),
(16, 'Suja', NULL, 'Senthil', 'Suja', 'ba900abada51df75c31d2bdab8dd8a8e', 'uploads/avatar-16.png?v=1711188017', NULL, 2, 1, '2024-03-23 15:30:17', '2024-03-23 15:34:56'),
(17, 'Aaravi', NULL, 'Nitheesh', 'Aaravi', 'e3cccda15991314898f5212502859fc4', 'uploads/avatar-17.png?v=1711188162', NULL, 2, 1, '2024-03-23 15:32:42', '2024-03-23 15:34:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `appointment_test_list`
--
ALTER TABLE `appointment_test_list`
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_list`
--
ALTER TABLE `history_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`appointment_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_list`
--
ALTER TABLE `test_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_list`
--
ALTER TABLE `appointment_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `history_list`
--
ALTER TABLE `history_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `test_list`
--
ALTER TABLE `test_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD CONSTRAINT `appointment_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appointment_test_list`
--
ALTER TABLE `appointment_test_list`
  ADD CONSTRAINT `appointment_test_list_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_test_list_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `test_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `history_list`
--
ALTER TABLE `history_list`
  ADD CONSTRAINT `history_list_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
